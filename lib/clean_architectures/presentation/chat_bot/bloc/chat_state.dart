part of 'chat_bloc.dart';

@freezed
class ChatState with _$ChatState {
  const ChatState._();
  const factory ChatState.initial({required ChatModalState data}) = _Initial;

  const factory ChatState.getChatSuccess({required ChatModalState data}) =
      _GetChatSuccess;
  const factory ChatState.getChatFailed(
      {required ChatModalState data, required String message}) = _GetChatFailed;
  const factory ChatState.lLading({required ChatModalState data}) = _Loading;

  bool get loading => this is _Loading;
}
