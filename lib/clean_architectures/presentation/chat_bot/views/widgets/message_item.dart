import 'package:advanced_mobile_gpt/clean_architectures/presentation/chat_bot/views/widgets/dot_waiting.dart';
import 'package:flutter/material.dart';
import 'package:advanced_mobile_gpt/core/components/constant/image_const.dart';
import 'package:advanced_mobile_gpt/core/components/extensions/context_extensions.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class MessageItem extends StatefulWidget {
  final bool isBot;
  final String content;
  final DateTime time;
  final bool loading;
  final bool isErrorMessage;
  final bool isSpeechText;
  final Function() longPressText;
  final Function() speechOnPress;
  final bool isAnimatedText;
  const MessageItem({
    super.key,
    this.isErrorMessage = false,
    this.isSpeechText = false,
    this.isAnimatedText = false,
    required this.isBot,
    required this.content,
    required this.time,
    required this.loading,
    required this.speechOnPress,
    required this.longPressText,
  });

  @override
  State<MessageItem> createState() => _MessageItemState();
}

class _MessageItemState extends State<MessageItem> {
  @override
  Widget build(BuildContext context) {
    final style = context.titleSmall.copyWith(
      fontSize: 13.0,
      color: widget.isBot ? context.titleLarge.color : Colors.white,
    );
    var content = [
      Flexible(
        flex: 10,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment:
              widget.isBot ? CrossAxisAlignment.start : CrossAxisAlignment.end,
          children: [
            if (widget.isBot) ...[
              _chatBotInformation(context),
              const SizedBox(height: 5.0),
            ],
            InkWell(
              borderRadius: BorderRadius.circular(10.0),
              onLongPress: () {
                if (!widget.isErrorMessage) {
                  widget.longPressText();
                }
              },
              child: Container(
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: widget.isErrorMessage
                      ? Colors.red
                      : widget.isBot
                          ? Theme.of(context).scaffoldBackgroundColor
                          : Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: widget.loading
                    ? Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: SizedBox(
                          width: 80,
                          child: DotWaiting(
                            radius: 6,
                            animationDuration:
                                const Duration(milliseconds: 300),
                            innerPadding: 2,
                            color: context.titleLarge.color!,
                          ),
                        ),
                      )
                    : widget.isAnimatedText
                        ? AnimatedTextKit(
                            animatedTexts: [
                              TypewriterAnimatedText(
                                widget.content,
                                textStyle: style,
                                speed: const Duration(milliseconds: 60),
                              ),
                            ],
                            isRepeatingAnimation: false,
                            pause: const Duration(milliseconds: 60),
                            displayFullTextOnTap: true,
                            stopPauseOnTap: true,
                          )
                        : Text(widget.content, style: style),
              ),
            )
          ],
        ),
      ),
      if (!widget.isBot) SizedBox(width: context.widthDevice * 0.1),
      SizedBox(width: context.widthDevice * 0.05)
    ];
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment:
            widget.isBot ? MainAxisAlignment.start : MainAxisAlignment.end,
        children: widget.isBot ? content : content.reversed.toList(),
      ),
    );
  }

  Row _chatBotInformation(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 20.0,
          height: 20.0,
          decoration: BoxDecoration(
            border: Border.all(width: 1, color: Colors.white),
            image: const DecorationImage(
              image: AssetImage(ImageConst.appIcon),
              fit: BoxFit.cover,
            ),
            shape: BoxShape.circle,
          ),
        ),
        const SizedBox(width: 5.0),
        Text(
          "Assistant",
          style: context.titleSmall.copyWith(fontSize: 12.0),
        ),
      ],
    );
  }
}
