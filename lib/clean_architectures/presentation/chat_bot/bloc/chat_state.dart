part of 'chat_bloc.dart';

@freezed
class ChatState with _$ChatState {
  const ChatState._();
  const factory ChatState.initial({required ChatModalState data}) = _Initial;

  const factory ChatState.getChatSuccess({required ChatModalState data}) =
      _GetChatSuccess;
  const factory ChatState.getChatFailed(
      {required ChatModalState data, required String message}) = _GetChatFailed;

  const factory ChatState.sendChatSuccess({required ChatModalState data}) =
      _SendChatSuccess;

  const factory ChatState.sendChatFailed({
    required ChatModalState data,
    required String message,
  }) = _SendChatFailed;

  const factory ChatState.getConversationSuccess(
      {required ChatModalState data}) = _GetConversationSuccess;

  const factory ChatState.getConversationFailed({
    required ChatModalState data,
    required String message,
  }) = _GetConversationFailed;

  const factory ChatState.loading({required ChatModalState data}) = _Loading;

  const factory ChatState.loadingSend({required ChatModalState data}) =
      _LoadingSend;

  ///[🔊 Text to speech state]
  const factory ChatState.startSpeechTextSuccess(
      {required ChatModalState data}) = _StartSpeechTextSuccess;

  const factory ChatState.stopSpeechTextSuccess(
      {required ChatModalState data}) = _StopSpeechTextSuccess;

  bool get loading => this is _Loading;
  bool get loadingSend => this is _LoadingSend;
  bool isSpeechText(int messageSpeech) => maybeWhen(
      orElse: () => false,
      startSpeechTextSuccess: (data) => messageSpeech == data.messageId);
}
