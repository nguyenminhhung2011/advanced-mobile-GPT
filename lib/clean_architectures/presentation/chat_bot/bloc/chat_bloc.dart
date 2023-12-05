import 'dart:async';

import 'package:advanced_mobile_gpt/clean_architectures/domain/entities/chat/chat.dart';
import 'package:advanced_mobile_gpt/clean_architectures/domain/entities/chat/chat_status.dart';
import 'package:advanced_mobile_gpt/clean_architectures/domain/entities/chat/chat_type.dart';
import 'package:advanced_mobile_gpt/clean_architectures/domain/usecase/chat_usecase.dart';
import 'package:advanced_mobile_gpt/clean_architectures/presentation/chat_bot/bloc/chat_modal_state.dart';
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
  final int _conversationId;
  ChatBloc(
    @factoryParam int conversationId,
    this._chatUseCase,
  )   : _conversationId = conversationId,
        super(
          _Initial(
              data: ChatModalState(chats: List<Chat>.empty(growable: true))),
        ) {
    on<_GetChat>(_onGetChat);
    on<_SendChat>(_onSendChat);
  }
  ChatModalState get data => state.data;

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
