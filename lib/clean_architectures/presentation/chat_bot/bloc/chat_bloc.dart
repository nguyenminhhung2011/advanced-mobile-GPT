import 'dart:async';

import 'package:advanced_mobile_gpt/clean_architectures/domain/entities/chat/chat.dart';
import 'package:advanced_mobile_gpt/clean_architectures/domain/entities/chat/chat_status.dart';
import 'package:advanced_mobile_gpt/clean_architectures/domain/entities/chat/chat_type.dart';
import 'package:advanced_mobile_gpt/clean_architectures/domain/usecase/chat_usecase.dart';
import 'package:advanced_mobile_gpt/clean_architectures/presentation/chat_bot/bloc/chat_modal_state.dart';
import 'package:advanced_mobile_gpt/core/services/speech_to_text_service.dart';
import 'package:advanced_mobile_gpt/core/services/text_to_speech_service.dart';
import 'package:collection/collection.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'chat_event.dart';
part 'chat_state.dart';

part 'chat_bloc.freezed.dart';

@injectable
class ChatBloc extends Bloc<ChatEvent, ChatState> {
  final ChatUseCase _chatUseCase;
  final SpeechToTextService _speechToTextService;
  final TextToSpeechService _textToSpeechService;
  final int _conversationId;
  ChatBloc(
    @factoryParam int conversationId,
    this._chatUseCase,
    this._speechToTextService,
    this._textToSpeechService,
  )   : _conversationId = conversationId,
        super(
          _Initial(
              data: ChatModalState(chats: List<Chat>.empty(growable: true))),
        ) {
    on<_GetChat>(_onGetChat);
    on<_SendChat>(_onSendChat);
    on<_GetConversation>(_onGetConversation);
    on<_InitialTextToSpeechService>(_onInitialTextToSpeechService);
    on<_CancelSpeechText>(_onCancelSpeechText);
    on<_StartSpeechText>(_onStartSpeechText);
    on<_StopSpeechText>(_onStopSpeechText);
  }
  ChatModalState get data => state.data;

  ///[🔊 Text to speech handler]
  FutureOr<void> _onInitialTextToSpeechService(
    _InitialTextToSpeechService event,
    Emitter<ChatState> emit,
  ) async {
    await _textToSpeechService.initTextToSpeech();
  }

  FutureOr<void> _onStartSpeechText(
    _StartSpeechText event,
    Emitter<ChatState> emit,
  ) async {
    if (state.loadingSend) {
      return;
    }
    try {
      emit(_StartSpeechTextSuccess(
          data: data.copyWith(messageId: event.messageSpeechId)));
      await _textToSpeechService.startHandler(text: event.content);
      if (data.messageId == event.messageSpeechId) {
        emit(_StopSpeechTextSuccess(data: data.copyWith(messageId: null)));
      }
    } catch (exception) {
      emit(_StopSpeechTextSuccess(data: data.copyWith(messageId: null)));
    }
  }

  FutureOr<void> _onCancelSpeechText(
    _CancelSpeechText event,
    Emitter<ChatState> emit,
  ) {
    add(const _StopSpeechText());
    if (event.previousMessageId != event.messageId) {
      event.functionCall.call();
    }
  }

  FutureOr<void> _onStopSpeechText(
    _StopSpeechText event,
    Emitter<ChatState> emit,
  ) async {
    emit(_StopSpeechTextSuccess(data: data.copyWith(messageId: null)));
    await _textToSpeechService.cancelHandler();
  }

  ///[🎙️Speech to text handler]

  ///[🎉Chat handler]
  FutureOr<void> _onGetConversation(
    _GetConversation event,
    Emitter<ChatState> emit,
  ) async {
    emit(_Loading(data: data));
    (await _chatUseCase.getConversationById(_conversationId)).fold(
      (left) => emit(_GetConversationFailed(data: data, message: left.message)),
      (right) => emit(
        _GetConversationSuccess(data: data.copyWith(conversation: right)),
      ),
    );
  }

  FutureOr<void> _onGetChat(
    _GetChat event,
    Emitter<ChatState> emit,
  ) async {
    emit(_Loading(data: data));
    (await _chatUseCase.getChats(_conversationId)).fold(
      (left) => emit(_GetChatFailed(data: data, message: left.message)),
      (right) => emit(
        _GetChatSuccess(data: data.copyWith(chats: right.reversed.toList())),
      ),
    );
  }

  FutureOr<void> _onSendChat(
    _SendChat event,
    Emitter<ChatState> emit,
  ) async {
    emit(_LoadingSend(data: data));
    final sendMessage = Chat(
      id: 0,
      conversationId: _conversationId,
      title: event.content,
      createdAt: DateTime.now(),
      chatStatus: ChatStatus.success,
      chatType: ChatType.user,
    );

    final saveSendMessage =
        await _chatUseCase.saveChat(_conversationId, sendMessage);
    if (saveSendMessage.isLeft) {
      return emit(_SendChatFailed(
          data: data, message: "Save message ${saveSendMessage.left.message}"));
    }

    final loadingMessage = Chat(
      id: 0,
      conversationId: _conversationId,
      title: "",
      createdAt: DateTime.now(),
      chatStatus: ChatStatus.loading,
      chatType: ChatType.assistant,
    );

    emit(
      state.copyWith(
        data: data.copyWith(chats: [
          loadingMessage,
          sendMessage.copyWith(id: saveSendMessage.right),
          ...data.chats
        ]),
      ),
    );
    return (await _chatUseCase.sendChat(_conversationId)).fold(
      (left) => emit(_SendChatFailed(
          data: data.copyWith(
              chats: data.chats.sublist(1).mapIndexed((index, e) {
            if (index == 0) {
              return e.copyWith(chatStatus: ChatStatus.error);
            }
            return e;
          }).toList()),
          message: left.message)),
      (right) => emit(_SendChatSuccess(
        data: data.copyWith(chats: [right, ...data.chats.sublist(1)]),
      )),
    );
  }
}
