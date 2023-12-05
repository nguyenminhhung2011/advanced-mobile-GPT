import 'package:advanced_mobile_gpt/clean_architectures/domain/entities/chat/chat.dart';
import 'package:advanced_mobile_gpt/clean_architectures/domain/entities/chat/chat_status.dart';
import 'package:advanced_mobile_gpt/clean_architectures/domain/entities/chat/chat_type.dart';
import 'package:advanced_mobile_gpt/clean_architectures/domain/repositories/chat_repositories.dart';
import 'package:advanced_mobile_gpt/core/components/network/app_exception.dart';
import 'package:either_dart/either.dart';
import 'package:injectable/injectable.dart';

@injectable
class ChatUseCase {
  final ChatRepositories _chatRepositories;
  ChatUseCase(this._chatRepositories);

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
}
