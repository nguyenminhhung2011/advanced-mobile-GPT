part of 'conversation_bloc.dart';

@freezed
class ConversationState with _$ConversationState {
  const ConversationState._();

  const factory ConversationState.initial(
      {required ConversationModalState data}) = _Initial;

  const factory ConversationState.getConversationSuccess(
      {required ConversationModalState data}) = _GetConversationSuccess;

  const factory ConversationState.getConversationFailed({
    required ConversationModalState data,
    required String message,
  }) = _GetConversationFailed;

  const factory ConversationState.createConversationSuccess({
    required ConversationModalState data,
  }) = _CreateConversationSuccess;

  const factory ConversationState.createConversationFailed({
    required ConversationModalState data,
    required String message,
  }) = _CreateConversationFailed;

  const factory ConversationState.deleteConversationSuccess({
    required ConversationModalState data,
  }) = _DeleteConversationSuccess;

  const factory ConversationState.deleteConversationFailed({
    required ConversationModalState data,
    required String message,
  }) = _DeleteConversationFailed;

  const factory ConversationState.loading(
      {required ConversationModalState data}) = _Loading;

  bool get loading => this is _Loading;
}