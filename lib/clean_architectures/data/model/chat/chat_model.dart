import 'package:advanced_mobile_gpt/core/components/constant/hive_constant.dart';
import 'package:hive/hive.dart';

part 'chat_model.g.dart';

@HiveType(typeId: HiveConstant.chatHiveId)
class ChatModel extends HiveObject {
  @HiveField(0)
  int id;

  @HiveField(1)
  int conversationId;

  @HiveField(2)
  String title;

  @HiveField(3)
  int createdAt;

  @HiveField(4)
  int? updatedAt;

  @HiveField(5)
  String status;

  @HiveField(6)
  String type;

  ChatModel({
    required this.id,
    required this.conversationId,
    required this.title,
    required this.createdAt,
    required this.updatedAt,
    required this.status,
    required this.type,
  });
}
