import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:advanced_mobile_gpt/core/components/extensions/context_extensions.dart';
import 'package:advanced_mobile_gpt/core/components/widgets/advanced_mobile_gpt/app_icon_widget.dart';

class PremiumView extends StatefulWidget {
  const PremiumView({super.key});

  @override
  State<PremiumView> createState() => _PremiumViewState();
}

class _PremiumViewState extends State<PremiumView> {
  BoxShadow get _shadow => BoxShadow(
      color: Theme.of(context).shadowColor.withOpacity(0.1), blurRadius: 5.0);

  EdgeInsets get _padding => const EdgeInsets.symmetric(horizontal: 15.0);

  Color get _primaryColor => Theme.of(context).primaryColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: _primaryColor.withOpacity(0.7),
      padding: const EdgeInsets.all(20.0).copyWith(top: kToolbarHeight),
      child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Theme.of(context).cardColor,
          boxShadow: [
            BoxShadow(
              color: Theme.of(context).shadowColor.withOpacity(0.1),
              blurRadius: 5.0,
            )
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: _padding.copyWith(top: 15.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const AppIconWidget(radius: 30.0),
                  const SizedBox(width: 5.0),
                  Expanded(
                    child: Text(
                      'Grammar Guard',
                      overflow: TextOverflow.ellipsis,
                      style: context.titleMedium
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10.0, vertical: 5.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      color: Colors.amber,
                      boxShadow: [_shadow],
                    ),
                    child: Text(
                      'Premium',
                      style: context.titleSmall.copyWith(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            const Divider(),
            Padding(
              padding: _padding,
              child: Text(
                "🌟 You're using the premium package, so you can access all our app's features.",
                style: context.titleSmall.copyWith(fontWeight: FontWeight.bold),
              ),
            ),
            _textRich(context),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Change plan ✅',
                      style: context.titleSmall.copyWith(
                        color: _primaryColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 12.0,
                      ),
                    ),
                  ),
                ),
              ),
            )
          ].expand((e) => [e, const SizedBox(height: 10.0)]).toList()
            ..removeLast(),
        ),
      ),
    );
  }

  Padding _textRich(BuildContext context) {
    return Padding(
      padding: _padding,
      child: Text.rich(TextSpan(
        style: context.titleSmall
            .copyWith(fontSize: 12.0, color: Theme.of(context).hintColor),
        children: [
          ...[
            "You current use Annual plan. ",
            "This package will expire in ",
            "10",
            " days ",
            "21",
            " hours/"
          ].mapIndexed(
            (index, e) => TextSpan(
              text: e,
              style: (index == 2 || index == 4)
                  ? TextStyle(color: _primaryColor, fontWeight: FontWeight.bold)
                  : null,
            ),
          )
        ],
      )),
    );
  }
}
