import 'package:advanced_mobile_gpt/clean_architectures/domain/entities/chat/chat.dart';
import 'package:advanced_mobile_gpt/clean_architectures/domain/entities/chat/chat_status.dart';
import 'package:advanced_mobile_gpt/clean_architectures/domain/entities/chat/chat_type.dart';
import 'package:advanced_mobile_gpt/clean_architectures/domain/entities/conversation/conversation.dart';
import 'package:advanced_mobile_gpt/clean_architectures/presentation/chat_bot/bloc/chat_bloc.dart';
import 'package:advanced_mobile_gpt/clean_architectures/presentation/chat_bot/bloc/chat_modal_state.dart';
import 'package:advanced_mobile_gpt/core/components/widgets/loading_page.dart';
import 'package:drag_ball/drag_ball.dart';
import 'package:flutter/material.dart';
import 'package:advanced_mobile_gpt/app_coordinator.dart';
import 'package:advanced_mobile_gpt/core/components/constant/image_const.dart';
import 'package:advanced_mobile_gpt/core/components/extensions/context_extensions.dart';
import 'package:advanced_mobile_gpt/core/components/widgets/image_custom.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:advanced_mobile_gpt/clean_architectures/presentation/chat_bot/views/widgets/input_widget.dart';
import 'package:advanced_mobile_gpt/clean_architectures/presentation/chat_bot/views/widgets/message_item.dart';

class ChatBotView extends ConsumerStatefulWidget {
  const ChatBotView({super.key});

  @override
  ConsumerState<ChatBotView> createState() => _ChatBotViewState();
}

class _ChatBotViewState extends ConsumerState<ChatBotView> {
  ChatBloc get _bloc => context.read<ChatBloc>();

  ChatModalState get _data => _bloc.data;

  List<Chat> get _chats => _data.chats;

  Conversation? get _conversation => _data.conversation;

  Color get _primaryColor => Theme.of(context).primaryColor;

  final TextEditingController _textController = TextEditingController();

  @override
  void initState() {
    _bloc.add(const ChatEvent.getConversation());
    _bloc.add(const ChatEvent.getChat());
    super.initState();
  }

  void _listenStateChange(_, ChatState state) {
    state.maybeWhen(
      getChatFailed: (_, error) => context.showSnackBar("🐛[Get chat] $error"),
      sendChatFailed: (_, error) =>
          context.showSnackBar("🐛[Send message] $error"),
      sendChatSuccess: (_) {},
      loadingSend: (_) => _textController.clear(),
      orElse: () {},
    );
  }

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ChatBloc, ChatState>(
        listener: _listenStateChange,
        builder: (context, state) {
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
                    child: Container(color: _primaryColor.withOpacity(0.1)),
                  ),
                  _body(context),
                  if (state.loading)
                    Container(
                      color: Colors.black45,
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      child: Center(
                        child: StyleLoadingWidget.foldingCube.renderWidget(
                            size: 40.0, color: Theme.of(context).primaryColor),
                      ),
                    )
                ],
              ),
            ),
          );
        });
  }

  Scaffold _body(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        leading: IconButton(
          onPressed: () => context.pop(),
          icon: const Icon(Icons.arrow_back),
        ),
        elevation: 0,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              _conversation?.header ?? "",
              style: context.titleSmall
                  .copyWith(fontSize: 10.0, color: Colors.white),
            ),
            Text(
              _conversation?.title ?? "Chat bot",
              style: context.titleMedium
                  .copyWith(fontWeight: FontWeight.w600, color: Colors.white),
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
                itemCount: _chats.length,
                itemBuilder: (_, index) {
                  final chat = _chats[index];
                  return MessageItem(
                    content: chat.title,
                    loading: chat.chatStatus.isLoading,
                    time: chat.createdAt,
                    isBot: chat.chatType.isAssistant,
                    isErrorMessage: chat.chatStatus.isError,
                    speechOnPress: () {},
                    longPressText: () {},
                    isAnimatedText: index == 0,
                  );
                }),
          ),
          InputWidget(
            textEditingController: _textController,
            isListening: false,
            onVoiceStart: () {},
            onVoiceStop: () {},
            micAvailable: false,
            onSubmitted: () =>
                _bloc.add(ChatEvent.sendChat(_textController.text)),
          ),
        ],
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
        ],
      ),
    );
  }
}
