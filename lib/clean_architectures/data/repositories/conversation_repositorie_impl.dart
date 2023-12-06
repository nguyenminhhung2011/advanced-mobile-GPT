import 'package:advanced_mobile_gpt/clean_architectures/data/model/conversation/conversation_model.dart';
import 'package:advanced_mobile_gpt/clean_architectures/domain/entities/conversation/conversation.dart';
import 'package:advanced_mobile_gpt/clean_architectures/domain/repositories/conversation_repositories.dart';
import 'package:advanced_mobile_gpt/core/components/network/app_exception.dart';
import 'package:either_dart/either.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: ConversationRepositories)
class ConversationRepositoriesImpl implements ConversationRepositories {
  final Box<ConversationModel> _conversationBox;
  ConversationRepositoriesImpl(this._conversationBox);

  @override
  Future<SResult<Conversation>> createdConversation() async {
    try {
      final conversation = ConversationModel(
        id: 0,
        createdAt: DateTime.now().millisecondsSinceEpoch,
      );

      final id = await _conversationBox.add(conversation);
      conversation.id = id;
      await _conversationBox.put(id, conversation);
      return Right(conversation.toEntity);
    } catch (err) {
      return Left(AppException(message: err.toString()));
    }
  }

  @override
  Future<SResult<bool>> deleteConversation(int conversationId) async {
    try {
      await _conversationBox.delete(conversationId);
      return const Right(true);
    } catch (error) {
      return Left(AppException(message: error.toString()));
    }
  }

  @override
  Future<SResult<List<Conversation>>> getConversations() async {
    try {
      return Right(_conversationBox.values.map((e) => e.toEntity).toList());
    } catch (err) {
      return Left(AppException(message: err.toString()));
    }
  }

  @override
  Future<SResult<Conversation>> updateConversation(
      Conversation newConversation) async {
    try {
      final conversation = _conversationBox.get(newConversation.id);
      if (conversation == null) return Left(AppException(message: "Null"));
      conversation
        ..lastUpdate = newConversation.lastUpdate?.millisecondsSinceEpoch
        ..lastMessage = newConversation.lastMessage
        ..header = "Assistant"
        ..title = newConversation.title;
      await conversation.save();
      return Right(conversation.toEntity);
    } catch (error) {
      return Left(AppException(message: error.toString()));
    }
  }

  @override
  Future<SResult<Conversation>> getConversationById(int conversationId) async {
    try {
      final conversation = _conversationBox.get(conversationId);
      if (conversation == null) return Left(AppException(message: "Null"));
      return Right(conversation.toEntity);
    } catch (error) {
      return Left(AppException(message: error.toString()));
    }
  }
}
