import 'package:freezed_annotation/freezed_annotation.dart';

part 'conversation.freezed.dart';

@freezed
class Conversation with _$Conversation {
  const factory Conversation({
    required int id,
    required DateTime createdAt,
    @Default("Assistant") String header,
    @Default("Name") String title,
    String? lastMessage,
    DateTime? lastUpdate,
  }) = _Conversation;
}
