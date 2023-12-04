import 'package:advanced_mobile_gpt/clean_architectures/data/model/chat/chat_model.dart';
import 'package:advanced_mobile_gpt/clean_architectures/data/model/conversation/conversation_model.dart';
import 'package:advanced_mobile_gpt/core/components/constant/hive_constant.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';

const String _hiveCached = "hiveCached";

@module
abstract class HiveModule {
  @preResolve
  @singleton
  Future<HiveInterface> init() async {
    await Hive.initFlutter();

    Hive.registerAdapter(ChatModelAdapter());
    Hive.registerAdapter(ConversationModelAdapter());

    await Hive.openBox<dynamic>(_hiveCached);
    await Hive.openBox<ChatModel>(HiveConstant.chatBox);
    await Hive.openBox<ConversationModel>(HiveConstant.conversationBox);
    return Hive;
  }

  @Singleton()
  Box<ConversationModel> conversationBox(HiveInterface hive) {
    return hive.box(HiveConstant.conversationBox);
  }

  @Singleton()
  Box<ChatModel> chatBox(HiveInterface hive) {
    return hive.box(HiveConstant.chatBox);
  }
}
