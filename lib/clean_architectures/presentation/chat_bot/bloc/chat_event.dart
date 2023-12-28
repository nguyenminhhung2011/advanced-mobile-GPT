part of 'chat_bloc.dart';

@freezed
class ChatEvent with _$ChatEvent {
  const factory ChatEvent.started() = _Started;

  const factory ChatEvent.getChat() = _GetChat;

  const factory ChatEvent.sendChat(String content) = _SendChat;

  const factory ChatEvent.getConversation() = _GetConversation;

  ///[🔊 Text to speech event]
  const factory ChatEvent.initialTextToSpeechService() =
      _InitialTextToSpeechService;

  const factory ChatEvent.startSpeechText({
    required String content,
    required int messageSpeechId,
  }) = _StartSpeechText;

  const factory ChatEvent.stopSpeechText() = _StopSpeechText;

  const factory ChatEvent.cancelSpeechText({
    required int messageId,
    required int previousMessageId,
    required Function() functionCall,
  }) = _CancelSpeechText;

  ///[🎙️Speech to text event]

  const factory ChatEvent.initialSpeechToTextService() =
      _InitialSpeechToTextService;
}
