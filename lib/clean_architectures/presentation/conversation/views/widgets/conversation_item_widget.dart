import 'package:advanced_mobile_gpt/core/components/constant/handle_time.dart';
import 'package:advanced_mobile_gpt/core/components/constant/image_const.dart';
import 'package:advanced_mobile_gpt/core/components/extensions/context_extensions.dart';
import 'package:flutter/material.dart';

class ConversationItemWidget extends StatelessWidget {
  const ConversationItemWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final smallStyle = context.titleSmall
        .copyWith(fontSize: 11.0, color: Theme.of(context).hintColor);
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(15.0),
      margin: const EdgeInsets.symmetric(horizontal: 10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Theme.of(context).primaryColorLight,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(ImageConst.appIcon, width: 30.0, height: 30.0),
          const SizedBox(width: 10.0),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(child: Text("Assistant", style: smallStyle)),
                    Text(getjmFormat(DateTime.now()), style: smallStyle),
                  ],
                ),
                Text(
                  "BlocBuilder",
                  style:
                      context.titleSmall.copyWith(fontWeight: FontWeight.bold),
                ),
                Text(
                  "Dưới đây là phiên bản đã được sửa đổi của đoạn mã, nó giải thích từng hành động tương ứng với từng responseCode",
                  style: smallStyle,
                  overflow: TextOverflow.ellipsis,
                ),
              ].expand((e) => [e, const SizedBox(height: 2.0)]).toList()
                ..removeLast(),
            ),
          )
        ],
      ),
    );
  }
}
