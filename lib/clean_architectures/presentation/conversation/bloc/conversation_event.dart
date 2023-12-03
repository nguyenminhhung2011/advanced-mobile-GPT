part of 'conversation_bloc.dart';

@freezed
class ConversationEvent with _$ConversationEvent {
  const factory ConversationEvent.stated() = _Started;

  const factory ConversationEvent.getConversation() = _GetConversation;
}
