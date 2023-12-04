import 'dart:async';

import 'package:advanced_mobile_gpt/clean_architectures/domain/entities/chat/chat.dart';
import 'package:advanced_mobile_gpt/clean_architectures/domain/usecase/chat_usecase.dart';
import 'package:advanced_mobile_gpt/clean_architectures/presentation/chat_bot/bloc/chat_modal_state.dart';
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
  }
  ChatModalState get data => state.data;

  FutureOr<void> _onGetChat(
    _GetChat event,
    Emitter<ChatState> emit,
  ) async {
    emit(_Loading(data: data));
    (await _chatUseCase.getChats(_conversationId)).fold(
      (left) => emit(_GetChatFailed(data: data, message: left.message)),
      (right) => emit(_GetChatSuccess(data: data.copyWith(chats: right))),
    );
  }
}
