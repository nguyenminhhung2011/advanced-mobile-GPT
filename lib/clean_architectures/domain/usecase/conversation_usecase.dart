import 'package:advanced_mobile_gpt/clean_architectures/domain/entities/conversation/conversation.dart';
import 'package:advanced_mobile_gpt/clean_architectures/domain/repositories/conversation_repositories.dart';
import 'package:advanced_mobile_gpt/core/components/network/app_exception.dart';
import 'package:injectable/injectable.dart';

@injectable
class ConversationUserCase {
  final ConversationRepositories _conversationRepositories;
  ConversationUserCase(this._conversationRepositories);

  Future<SResult<List<Conversation>>> getConversations() =>
      _conversationRepositories.getConversations();
  Future<SResult<Conversation>> createdConversation() =>
      _conversationRepositories.createdConversation();
  Future<SResult<bool>> deleteConversation(int conversationId) =>
      _conversationRepositories.deleteConversation(conversationId);

  Future<SResult<Conversation>> updateConversation({
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
}
