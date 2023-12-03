import 'package:drag_ball/drag_ball.dart';
import 'package:flutter/material.dart';
import 'package:advanced_mobile_gpt/app_coordinator.dart';
import 'package:advanced_mobile_gpt/core/components/constant/image_const.dart';
import 'package:advanced_mobile_gpt/core/components/extensions/context_extensions.dart';
import 'package:advanced_mobile_gpt/core/components/widgets/image_custom.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:advanced_mobile_gpt/mvvm/features/chat_bot/views/widgets/input_widget.dart';
import 'package:advanced_mobile_gpt/mvvm/features/chat_bot/views/widgets/message_item.dart';

class ChatBotView extends ConsumerStatefulWidget {
  const ChatBotView({super.key});

  @override
  ConsumerState<ChatBotView> createState() => _ChatBotViewState();
}

class _ChatBotViewState extends ConsumerState<ChatBotView> {
  Color get _primaryColor => Theme.of(context).primaryColor;

  final TextEditingController _textController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Dragball(
      ball: _supportBall(context),
      iconSize: 15.0,
      onTap: () {},
      initialPosition: const DragballPosition.defaultPosition(),
      onPositionChanged: (_) {},
      child: WillPopScope(
        onWillPop: () async {
          return true;
        },
        child: Stack(
          children: [
            Container(
              color: Theme.of(context).scaffoldBackgroundColor,
            ),
            if (ImageConst.chatBackgroundImg.isNotEmpty)
              Positioned.fill(
                child: ImageCustom(
                  imageUrl: ImageConst.chatBackgroundImg,
                  fit: BoxFit.cover,
                  color: _primaryColor.withOpacity(0.1),
                  isNetworkImage: false,
                ),
              ),
            Positioned.fill(
              child: Container(
                color: _primaryColor.withOpacity(0.1),
              ),
            ),
            Scaffold(
              backgroundColor: Colors.transparent,
              appBar: AppBar(
                backgroundColor: Theme.of(context).primaryColor,
                leading: IconButton(
                  onPressed: () => context.pop(),
                  icon: const Icon(Icons.arrow_back),
                ),
                elevation: 0,
                title: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Chat bot',
                      style: context.titleLarge.copyWith(
                          fontWeight: FontWeight.w600, color: Colors.white),
                    ),
                  ],
                ),
                actions: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.more_vert),
                  )
                ],
              ),
              body: Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                      reverse: true,
                      itemCount: 10,
                      itemBuilder: (_, index) => MessageItem(
                        isBot: index % 2 == 0,
                        content:
                            'content content content content content content content content content content content',
                        time: DateTime.now(),
                        loading: false,
                      ),
                    ),
                  ),
                  InputWidget(
                    textEditingController: _textController,
                    isListening: false,
                    onVoiceStart: () {},
                    onVoiceStop: () {},
                    micAvailable: false,
                    onSubmitted: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container _supportBall(BuildContext context) {
    return Container(
      width: 100.0,
      padding: const EdgeInsets.all(5.0),
      height: 80.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Theme.of(context).cardColor,
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).shadowColor.withOpacity(0.2),
            blurRadius: 5.0,
          )
        ],
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(width: 10.0),
              Image.asset(ImageConst.appIcon, width: 12.0, height: 12.0),
              Expanded(
                child: Text(
                  ' Option',
                  style: context.titleSmall.copyWith(
                    fontSize: 12.0,
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
          // const Divider(),
          TextButton(
            onPressed: () async {
              final prompt = await context.selectedPrompt();
              if (prompt.isNotEmpty) {
                _textController.text = prompt;
              }
            },
            child: Text(
              'Prompt text',
              style: context.titleSmall.copyWith(fontSize: 10.0),
            ),
          ),
          // TextButton(
          //   onPressed: () {},
          //   child: Text(
          //     'Some option',
          //     style: context.titleSmall.copyWith(fontSize: 12.0),
          //   ),
          // )
        ],
      ),
    );
  }
}
