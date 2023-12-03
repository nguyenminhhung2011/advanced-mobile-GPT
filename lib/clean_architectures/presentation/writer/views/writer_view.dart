import 'package:flutter/material.dart';
import 'package:advanced_mobile_gpt/core/components/extensions/context_extensions.dart';

class WriterView extends StatefulWidget {
  const WriterView({super.key});

  @override
  State<WriterView> createState() => _WriterViewState();
}

class _WriterViewState extends State<WriterView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        elevation: 0,
        title: Text(
          'Write Generator',
          style: context.titleMedium
              .copyWith(fontWeight: FontWeight.w600, color: Colors.white),
        ),
      ),
    );
  }
}
