import 'dart:async';

import 'package:advanced_mobile_gpt/clean_architectures/domain/entities/conversation/conversation.dart';
import 'package:advanced_mobile_gpt/clean_architectures/domain/usecase/conversation_usecase.dart';
import 'package:advanced_mobile_gpt/clean_architectures/presentation/conversation/bloc/conversation_modal_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'conversation_event.dart';
part 'conversation_state.dart';

part 'conversation_bloc.freezed.dart';

@injectable
class ConversationBloc extends Bloc<ConversationEvent, ConversationState> {
  final ConversationUserCase _conversationUserCase;
  ConversationBloc(this._conversationUserCase)
      : super(
          _Initial(
            data: ConversationModalState(
                conversations: List<Conversation>.empty(growable: true)),
          ),
        ) {
    on<_GetConversation>(_onGetConversation);
    on<_CreateConversation>(_onCreateConversation);
    on<_DeleteConversation>(_onDeleteConversation);
  }

  ConversationModalState get data => state.data;

  FutureOr<void> _onGetConversation(
    _GetConversation event,
    Emitter<ConversationState> emit,
  ) async {
    emit(_Loading(data: data));

    (await _conversationUserCase.getConversations()).fold(
      (left) => emit(_GetConversationFailed(data: data, message: left.message)),
      (right) => emit(
        _GetConversationSuccess(data: data.copyWith(conversations: right)),
      ),
    );
  }

  FutureOr<void> _onCreateConversation(
    _CreateConversation event,
    Emitter<ConversationState> emit,
  ) async {
    emit(_Loading(data: data));
    (await _conversationUserCase.createdConversation()).fold(
      (left) =>
          emit(_CreateConversationFailed(data: data, message: left.message)),
      (right) => emit(_CreateConversationSuccess(
        data: data.copyWith(conversations: [right, ...data.conversations]),
      )),
    );
  }

  FutureOr<void> _onDeleteConversation(
    _DeleteConversation event,
    Emitter<ConversationState> emit,
  ) async {
    emit(_Loading(data: data));
    (await _conversationUserCase.deleteConversation(event.conversationId)).fold(
      (left) =>
          emit(_DeleteConversationFailed(data: data, message: left.message)),
      (right) => emit(
        _DeleteConversationSuccess(
          data: data.copyWith(
            conversations: data.conversations
                .where((element) => element.id != event.conversationId)
                .toList(),
          ),
        ),
      ),
    );
  }
}
