import 'dart:developer';

import 'package:advanced_mobile_gpt/clean_architectures/data/data_source/remote/base_api.dart';
import 'package:advanced_mobile_gpt/clean_architectures/data/data_source/remote/data_state.dart';
import 'package:advanced_mobile_gpt/clean_architectures/data/data_source/remote/gpt_api.dart';
import 'package:advanced_mobile_gpt/clean_architectures/data/model/chat/chat_model.dart';
import 'package:advanced_mobile_gpt/clean_architectures/domain/entities/chat/chat.dart';
import 'package:advanced_mobile_gpt/clean_architectures/domain/repositories/chat_repositories.dart';
import 'package:advanced_mobile_gpt/core/components/constant/gpt_constant.dart';
import 'package:advanced_mobile_gpt/core/components/network/app_exception.dart';
import 'package:either_dart/either.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: ChatRepositories)
class ChatRepositoriesImpl extends BaseApi implements ChatRepositories {
  final GPTApi _gptApi;
  ChatRepositoriesImpl(this._gptApi);

  Future<Box<ChatModel>> chatBox(int conversationId) async =>
      await Hive.openBox<ChatModel>('chat_$conversationId');

  @override
  Future<SResult<List<Chat>>> getChats(int conversationId) async {
    try {
      return Right(
        (await chatBox(conversationId)).values.map((e) => e.toEntity).toList(),
      );
    } catch (error) {
      return Left(AppException(message: error.toString()));
    }
  }

  @override
  Future<SResult<String>> sendMessage(List<Chat> chats) async {
    try {
      final body = {
        "model": GptConstant.model,
        "messages": chats.map((e) => ChatModel.fromEntity(e).toJson).toList(),
        "temperature": GptConstant.temperature,
      };

      final response =
          await getStateOf(request: () async => await _gptApi.chat(body: body));
      if (response is DataFailed) {
        return Left(
            AppException(message: response.dioError?.message ?? baseError));
      }
      log("🎉[Response text] $response");

      ///[Call api here]
      return Right(response.data["choices"][0]?["message"]["content"] ?? "");
    } catch (error) {
      return Left(AppException(message: error.toString()));
    }
  }

  @override
  Future<SResult<int>> saveMessage(
      {required int conversationId, required Chat chat}) async {
    try {
      final chatB = await chatBox(conversationId);
      final chatModel = ChatModel.fromEntity(chat);
      final id = await chatB.add(chatModel);

      chatModel.id = id;

      await chatB.put(id, chatModel);

      return Right(conversationId);
    } catch (error) {
      return Left(AppException(message: error.toString()));
    }
  }
}
