import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:advanced_mobile_gpt/app_coordinator.dart';
import 'package:advanced_mobile_gpt/core/components/constant/constant.dart';
import 'package:advanced_mobile_gpt/core/components/extensions/context_extensions.dart';
import 'package:advanced_mobile_gpt/routes/routes.dart';

class HomeCategoryField extends StatelessWidget {
  const HomeCategoryField({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ...Constant.featureCategories.mapIndexed(
          (index, e) => Expanded(
            child: GestureDetector(
              onTap: () {
                if (index == 0) {
                  context.openListPageWithRoute(Routes.chatBot);
                } else if (index == 2) {
                  context.openListPageWithRoute(Routes.writer);
                }
              },
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                  color: e.color.withOpacity(0.7),
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 5.0,
                      color: Theme.of(context).shadowColor.withOpacity(0.1),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.transparent,
                        border: Border.all(width: 1, color: Colors.white),
                      ),
                      child: Image.asset(e.image,
                          color: Colors.white, width: 25.0, height: 25.0),
                    ),
                    const SizedBox(height: 5.0),
                    Text(
                      e.content,
                      maxLines: 1,
                      style: context.titleSmall.copyWith(
                          fontWeight: FontWeight.w600, color: Colors.white),
                    )
                  ],
                ),
              ),
            ),
          ),
        )
      ].expand((e) => [e, const SizedBox(width: 15.0)]).toList()
        ..removeLast(),
    );
  }
}
