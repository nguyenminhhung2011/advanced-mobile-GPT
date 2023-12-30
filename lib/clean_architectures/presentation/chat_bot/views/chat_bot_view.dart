import 'dart:developer';

import 'package:advanced_mobile_gpt/clean_architectures/domain/entities/chat/chat.dart';
import 'package:advanced_mobile_gpt/clean_architectures/domain/entities/chat/chat_status.dart';
import 'package:advanced_mobile_gpt/clean_architectures/domain/entities/chat/chat_type.dart';
import 'package:advanced_mobile_gpt/clean_architectures/domain/entities/conversation/conversation.dart';
import 'package:advanced_mobile_gpt/clean_architectures/presentation/chat_bot/bloc/chat_bloc.dart';
import 'package:advanced_mobile_gpt/clean_architectures/presentation/chat_bot/bloc/chat_modal_state.dart';
import 'package:advanced_mobile_gpt/clean_architectures/presentation/conversation/bloc/conversation_bloc.dart';
import 'package:advanced_mobile_gpt/clean_architectures/presentation/conversation/views/conversation_view.dart';
import 'package:advanced_mobile_gpt/core/components/extensions/string_extensions.dart';
import 'package:advanced_mobile_gpt/core/components/widgets/loading_page.dart';
import 'package:flutter/material.dart';
import 'package:advanced_mobile_gpt/app_coordinator.dart';
import 'package:advanced_mobile_gpt/core/components/constant/image_const.dart';
import 'package:advanced_mobile_gpt/core/components/extensions/context_extensions.dart';
import 'package:advanced_mobile_gpt/core/components/widgets/image_custom.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:advanced_mobile_gpt/clean_architectures/presentation/chat_bot/views/widgets/input_widget.dart';
import 'package:advanced_mobile_gpt/clean_architectures/presentation/chat_bot/views/widgets/message_item.dart';

class MessageReturn {
  final String title;
  final String lastMessage;

  MessageReturn({required this.title, required this.lastMessage});
}

class ChatBotView extends StatefulWidget {
  const ChatBotView({super.key});

  @override
  State<ChatBotView> createState() => _ChatBotViewState();
}

class _ChatBotViewState extends State<ChatBotView> {
  ChatBloc get _bloc => context.read<ChatBloc>();
  ConversationBloc get _conversationBloc => context.read<ConversationBloc>();

  ChatState get _state => _bloc.state;

  ChatModalState get _data => _bloc.data;

  bool get _micAvailable => _data.micAvailable;

  List<Chat> get _chats => _data.chats;

  Conversation? get _conversation => _data.conversation;

  Color get _primaryColor => Theme.of(context).primaryColor;

  final TextEditingController _textController = TextEditingController();

  @override
  void initState() {
    _bloc.add(const ChatEvent.initialSpeechToTextService());
    _bloc.add(const ChatEvent.initialTextToSpeechService());
    _conversationBloc.add(const ConversationEvent.getConversation());
    super.initState();
  }

  void _listenStateChange(_, ChatState state) {
    state.maybeWhen(
      getConversationSuccess: (_) => _bloc.add(const ChatEvent.getChat()),
      getChatSuccess: (_) =>
          _bloc.add(const ChatEvent.changeTextAnimation(false)),
      getChatFailed: (_, error) => context.showSnackBar("🐛[Get chat] $error"),
      sendChatFailed: (_, error) =>
          context.showSnackBar("🐛[Send message] $error"),
      sendChatSuccess: (_) {
        _bloc.add(const ChatEvent.changeTextAnimation(true));
        if (_conversation != null) {
          _conversationBloc.add(
            ConversationEvent.updateConversation(
              conversationId: _conversation!.id,
              lastMessage: _chats.first.title,
              title: _chats.last.title.toHeaderConversation,
            ),
          );
        }
      },
      loadingSend: (_) => _textController.clear(),
      listeningSpeech: (_, textResponse) => _textController
        ..text = textResponse
        ..selection = TextSelection.collapsed(offset: textResponse.length),
      updateTextSuccess: (_, textResponse) => _textController
        ..text = textResponse
        ..selection = TextSelection.collapsed(offset: textResponse.length),
      orElse: () {},
    );
  }

  void _listenConversationStateChange(_, ConversationState state) {
    state.maybeWhen(
      getConversationSuccess: (data) {
        log("Success");
        if (data.conversations.isNotEmpty) {
          _bloc.add(ChatEvent.getConversation(data.conversations.first.id));
        }
      },
      deleteConversationSuccess: (data) {
        if (data.conversations.isNotEmpty) {
          _bloc.add(ChatEvent.getConversation(data.conversations.first.id));
        } else {
          _bloc.add(const ChatEvent.clearConversation());
        }
      },
      deleteConversationFailed: (_, error) =>
          context.showSnackBar("🐛[Delete conversation] $error"),
      getConversationFailed: (_, error) =>
          context.showSnackBar("🐛[Get conversation] $error"),
      createConversationFailed: (_, error) =>
          context.showSnackBar("🐛[Create conversation] $error"),
      selectConversationFailed: (_) => context.apiKeyWarning(),
      selectConversationSuccess: (_, id) =>
          _bloc.add(ChatEvent.getConversation(id)),
      orElse: () {},
    );
  }

  void _pop() {
    if (_chats.isNotEmpty) {
      context.popArgs(
        MessageReturn(
            title: _chats.last.title.toHeaderConversation,
            lastMessage: _chats.first.title),
      );
    } else {
      context.pop();
    }
  }

  void _handleSpeechText({required int messageId, required String content}) {
    _state.maybeWhen(
      startSpeechTextSuccess: (data) {
        _bloc.add(
          ChatEvent.cancelSpeechText(
            messageId: messageId,
            previousMessageId: data.messageId ?? -1,
            functionCall: () => _bloc.add(
              ChatEvent.startSpeechText(
                  content: content, messageSpeechId: messageId),
            ),
          ),
        );
      },
      orElse: () => _bloc.add(ChatEvent.startSpeechText(
          content: content, messageSpeechId: messageId)),
    );
  }

  @override
  void deactivate() {
    _bloc.add(const ChatEvent.stopSpeechText());
    _bloc.add(const ChatEvent.stopListenSpeech());
    super.deactivate();
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
          return WillPopScope(
            onWillPop: () async {
              context.closeErrorMessage();
              _pop();
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
          );
        });
  }

  Widget _body(BuildContext context) {
    return BlocListener<ConversationBloc, ConversationState>(
      bloc: _conversationBloc,
      listener: _listenConversationStateChange,
      child: Scaffold(
        extendBody: true,
        backgroundColor: Colors.transparent,
        drawer: const Drawer(child: ConversationView()),
        appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColor,
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
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (_conversation != null) ...[
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
                        speechOnPress: () => _handleSpeechText(
                            messageId: chat.id, content: chat.title),
                        longPressText: () {},
                        isSpeechText: _state.isSpeechText(chat.id),
                        isAnimatedText: _data.textAnimation && index == 0,
                        textAnimationCompleted: () => _bloc
                            .add(const ChatEvent.changeTextAnimation(false)),
                      );
                    }),
              ),
              InputWidget(
                textEditingController: _textController,
                isListening: _state.listenSpeech,
                onVoiceStart: () =>
                    _bloc.add(const ChatEvent.startListenSpeech()),
                onVoiceStop: () =>
                    _bloc.add(const ChatEvent.stopListenSpeech()),
                micAvailable: _micAvailable,
                onSubmitted: () =>
                    _bloc.add(ChatEvent.sendChat(_textController.text)),
              )
            ] else ...[
              Image.asset(ImageConst.appIcon,
                  width: 32.0, height: 32.0, fit: BoxFit.cover),
              const SizedBox(height: 10.0),
              Text(
                "Please create and select thread",
                textAlign: TextAlign.center,
                style:
                    context.titleMedium.copyWith(fontWeight: FontWeight.w600),
              )
            ]
          ],
        ),
      ),
    );
  }
}
