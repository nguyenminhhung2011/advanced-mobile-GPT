import 'package:flutter/material.dart';
import 'package:advanced_mobile_gpt/core/components/constant/image_const.dart';
import 'package:advanced_mobile_gpt/core/components/extensions/context_extensions.dart';

class BoardStatus extends StatelessWidget {
  const BoardStatus({super.key});

  @override
  Widget build(BuildContext context) {
    Color primaryColor = Theme.of(context).primaryColor;

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(15.0),
      margin: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        gradient: LinearGradient(
          colors: [
            primaryColor.withOpacity(0.7),
            primaryColor.withOpacity(0.6),
            primaryColor.withOpacity(0.4)
          ],
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  'keyboard status',
                  style: context.titleSmall.copyWith(
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(width: 5.0),
              GestureDetector(
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(28.0),
                    color: Theme.of(context).cardColor,
                  ),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(50.0),
                        child: Image.asset(ImageConst.appIcon,
                            width: 28.0, height: 28.0),
                      ),
                      const SizedBox(width: 5.0),
                      Text(
                        'Enable',
                        style: context.titleSmall
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(width: 5.0),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 5.0),
          Text(
            '⚠️ Can\'t find text',
            style: context.titleSmall.copyWith(
              color: Colors.white,
              fontSize: 12.0,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
