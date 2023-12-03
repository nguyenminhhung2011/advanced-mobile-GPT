import 'package:advanced_mobile_gpt/app_coordinator.dart';
import 'package:advanced_mobile_gpt/clean_architectures/presentation/conversation/views/widgets/conversation_item_widget.dart';
import 'package:advanced_mobile_gpt/core/components/extensions/context_extensions.dart';
import 'package:advanced_mobile_gpt/core/components/widgets/button_custom.dart';
import 'package:flutter/material.dart';

class ConversationView extends StatefulWidget {
  const ConversationView({super.key});

  @override
  State<ConversationView> createState() => _ConversationViewState();
}

class _ConversationViewState extends State<ConversationView> {
  Color get _backgroundColor => Theme.of(context).scaffoldBackgroundColor;
  Color get _primaryColor => Theme.of(context).primaryColor;

  @override
  Widget build(BuildContext context) {
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
        itemCount: 10,
        separatorBuilder: (_, __) => const SizedBox(height: 10.0),
        itemBuilder: (_, index) => const ConversationItemWidget(),
      ),
    );
  }

  Widget _bottomNavigationField(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: ButtonCustom(
        onPress: () {},
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
