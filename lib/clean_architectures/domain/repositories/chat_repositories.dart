import 'package:advanced_mobile_gpt/clean_architectures/domain/entities/chat/chat.dart';
import 'package:advanced_mobile_gpt/core/components/network/app_exception.dart';

abstract class ChatRepositories {
  Future<SResult<List<Chat>>> getChats(int conversationId);
  Future<SResult<String>> sendMessage(List<Chat> chats);
  Future<SResult<int>> saveMessage(
      {required int conversationId, required Chat chat});
}
