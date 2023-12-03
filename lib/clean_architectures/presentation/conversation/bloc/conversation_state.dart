part of 'conversation_bloc.dart';

@freezed
class ConversationState with _$ConversationState {
  const factory ConversationState.initial(
      {required ConversationModalState data}) = _Initial;

  const factory ConversationState.getConversationSuccess(
      {required ConversationModalState data}) = _GetConversationSuccess;

  const factory ConversationState.getConversationFailed({
    required ConversationModalState data,
    required String message,
  }) = _GetConversationFailed;

  const factory ConversationState.loading(
      {required ConversationModalState data}) = _Loading;
}
