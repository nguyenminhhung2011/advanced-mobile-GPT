import 'package:advanced_mobile_gpt/clean_architectures/domain/entities/chat/chat.dart';
import 'package:advanced_mobile_gpt/clean_architectures/domain/entities/chat/chat_status.dart';
import 'package:advanced_mobile_gpt/clean_architectures/domain/entities/chat/chat_type.dart';
import 'package:advanced_mobile_gpt/clean_architectures/domain/entities/conversation/conversation.dart';
import 'package:advanced_mobile_gpt/clean_architectures/domain/repositories/chat_repositories.dart';
import 'package:advanced_mobile_gpt/clean_architectures/domain/repositories/conversation_repositories.dart';
import 'package:advanced_mobile_gpt/core/components/network/app_exception.dart';
import 'package:either_dart/either.dart';
import 'package:injectable/injectable.dart';

@injectable
class ChatUseCase {
  final ChatRepositories _chatRepositories;
  final ConversationRepositories _conversationRepositories;
  ChatUseCase(this._chatRepositories, this._conversationRepositories);

  Future<SResult<List<Chat>>> getChats(int conversationId) =>
      _chatRepositories.getChats(conversationId);

  Future<SResult<int>> saveChat(int conversationId, Chat chat) async =>
      await _chatRepositories.saveMessage(
          conversationId: conversationId, chat: chat);

  Future<SResult<Chat>> sendChat(int conversationId) async {
    final chats = await getChats(conversationId);
    if (chats.isLeft) return Left(chats.left);

    final response = await _chatRepositories.sendMessage(chats.right);
    if (response.isLeft || (response.isRight && response.right.isEmpty)) {
      return Left(response.left);
    }

    final newChat = Chat(
      id: 0,
      conversationId: conversationId,
      title: response.right,
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
      chatStatus: ChatStatus.success,
      chatType: ChatType.assistant,
    );

    final saveResponseMess = await _chatRepositories.saveMessage(
        chat: newChat, conversationId: conversationId);
    if (saveResponseMess.isLeft) return Left(saveResponseMess.left);

    return Right(newChat.copyWith(id: saveResponseMess.right));
  }

  Future<SResult<bool>> updateConversation({
    required int conversationId,
    required String title,
    required String lastMessage,
    required DateTime lastUpdated,
  }) async =>
      _conversationRepositories.updateConversation(
        Conversation(
          id: conversationId,
          createdAt: DateTime.now(),
          lastMessage: lastMessage,
          lastUpdate: lastUpdated,
          title: title,
        ),
      );

  Future<SResult<Conversation>> getConversationById(int conversationId) =>
      _conversationRepositories.getConversationById(conversationId);
}
