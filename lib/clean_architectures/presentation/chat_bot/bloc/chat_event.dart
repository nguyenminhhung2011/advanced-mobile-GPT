part of 'chat_bloc.dart';

@freezed
class ChatEvent with _$ChatEvent {
  const factory ChatEvent.started() = _Started;
  const factory ChatEvent.getChat() = _GetChat;
  const factory ChatEvent.sendChat(String content) = _SendChat;
  const factory ChatEvent.getConversation() = _GetConversation;
}
