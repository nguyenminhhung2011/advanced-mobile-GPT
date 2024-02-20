import 'package:advanced_mobile_gpt/clean_architectures/presentation/image_generate/bloc/image_gen_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ImageGenerateView extends StatefulWidget {
  const ImageGenerateView({super.key});

  @override
  State<ImageGenerateView> createState() => _ImageGenerateViewState();
}

class _ImageGenerateViewState extends State<ImageGenerateView> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void _listenStateChange(BuildContext _, ImageGenState state) {}

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ImageGenBloc, ImageGenState>(
      listener: _listenStateChange,
      builder: (_, state) {
        return Scaffold(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        );
      },
    );
  }
}
