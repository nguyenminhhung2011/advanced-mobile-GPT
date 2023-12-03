import 'package:advanced_mobile_gpt/clean_architectures/domain/entities/chat/chat_status.dart';
import 'package:advanced_mobile_gpt/clean_architectures/domain/entities/chat/chat_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat.freezed.dart';

@freezed
class Chat with _$Chat {
  const factory Chat({
    required int id,
    required int conversationId,
    required String title,
    required DateTime createdAt,
    DateTime? updatedAt,
    required ChatStatus chatStatus,
    required ChatType chatType,
  }) = _Chat;
} 
