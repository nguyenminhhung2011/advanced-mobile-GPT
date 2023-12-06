import 'package:advanced_mobile_gpt/app_coordinator.dart';
import 'package:advanced_mobile_gpt/clean_architectures/domain/entities/conversation/conversation.dart';
import 'package:advanced_mobile_gpt/clean_architectures/presentation/chat_bot/views/chat_bot_view.dart';
import 'package:advanced_mobile_gpt/clean_architectures/presentation/conversation/bloc/conversation_bloc.dart';
import 'package:advanced_mobile_gpt/clean_architectures/presentation/conversation/bloc/conversation_modal_state.dart';
import 'package:advanced_mobile_gpt/clean_architectures/presentation/conversation/views/widgets/conversation_item_widget.dart';
import 'package:advanced_mobile_gpt/core/components/extensions/context_extensions.dart';
import 'package:advanced_mobile_gpt/core/components/widgets/button_custom.dart';
import 'package:advanced_mobile_gpt/core/components/widgets/loading_page.dart';
import 'package:advanced_mobile_gpt/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ConversationView extends StatefulWidget {
  const ConversationView({super.key});

  @override
  State<ConversationView> createState() => _ConversationViewState();
}

class _ConversationViewState extends State<ConversationView> {
  ConversationBloc get _bloc => context.read<ConversationBloc>();

  ConversationModalState get _data => _bloc.data;

  List<Conversation> get _conversations => _data.conversations;

  Color get _backgroundColor => Theme.of(context).scaffoldBackgroundColor;
  Color get _primaryColor => Theme.of(context).primaryColor;

  @override
  void initState() {
    _bloc.add(const ConversationEvent.getConversation());
    super.initState();
  }

  void _listenStateChange(_, ConversationState state) {
    state.maybeWhen(
      getConversationFailed: (_, error) =>
          context.showSnackBar("🐛[Get conversation] $error"),
      createConversationFailed: (_, error) =>
          context.showSnackBar("🐛[Create conversation] $error"),
      selectConversationFailed: (_) => context.apiKeyWarning(),
      selectConversationSuccess: (_, id) async {
        final open =
            await context.openPageWithRouteAndParams(Routes.chatBot, id);
        if (open is MessageReturn) {
          _bloc.add(
            ConversationEvent.updateConversation(
              conversationId: id,
              lastMessage: open.lastMessage,
              title: open.title,
            ),
          );
        }
      },
      orElse: () {},
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ConversationBloc, ConversationState>(
      listener: _listenStateChange,
      builder: (context, state) => Stack(
        children: [
          _body(context: context, state: state),
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
  }

  Widget _body(
      {required BuildContext context, required ConversationState state}) {
    return Scaffold(
      extendBody: true,
      backgroundColor: _backgroundColor,
      bottomNavigationBar: _bottomNavigationField(context),
      appBar: AppBar(
        backgroundColor: _primaryColor,
        elevation: 0,
        leading: (context.canPop)
            ? IconButton(
                onPressed: () => context.pop(),
                icon: const Icon(Icons.arrow_back, color: Colors.white))
            : null,
        title: Text(
          "Conversation",
          style: context.titleMedium
              .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView.separated(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.only(top: 15.0, bottom: 80.0),
          itemCount: _conversations.length,
          separatorBuilder: (_, __) => const SizedBox(height: 10.0),
          itemBuilder: (_, index) {
            final conversation = _conversations[index];
            return ConversationItemWidget(
              conversation: conversation,
              onDelete: () => _bloc.add(
                ConversationEvent.deleteConversation(
                    conversationId: conversation.id),
              ),
              onSelectConversation: () => _bloc.add(
                ConversationEvent.selectConversation(
                    conversationId: conversation.id),
              ),
            );
          }),
    );
  }

  Widget _bottomNavigationField(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: ButtonCustom(
        onPress: () => _bloc.add(const ConversationEvent.createConversation()),
        height: 45.0,
        radius: 5,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.add, color: Colors.white, size: 18.0),
            Text(
              " New chat",
              style: context.titleSmall
                  .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
