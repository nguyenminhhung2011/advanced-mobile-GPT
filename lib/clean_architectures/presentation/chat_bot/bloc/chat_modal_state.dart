import 'package:advanced_mobile_gpt/clean_architectures/domain/entities/chat/chat.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_modal_state.freezed.dart';

@freezed
class ChatModalState with _$ChatModalState {
  const factory ChatModalState({
    required List<Chat> chats,
  }) = _ChatModalState;
}
