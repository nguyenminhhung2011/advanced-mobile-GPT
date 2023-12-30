import 'package:advanced_mobile_gpt/clean_architectures/presentation/conversation/views/conversation_view.dart';
import 'package:advanced_mobile_gpt/clean_architectures/presentation/input_api/cubit/input_api_cubit.dart';
import 'package:advanced_mobile_gpt/clean_architectures/presentation/input_api/views/input_api_view.dart';
import 'package:advanced_mobile_gpt/core/dependency_injection/di.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:advanced_mobile_gpt/clean_architectures/presentation/chat_bot/views/chat_bot_view.dart';
import 'package:advanced_mobile_gpt/routes/routes.dart';

class MainRoutes {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.chatBot:
        return MaterialPageRoute(
            settings: settings,
            builder: (_) {
              return const ChatBotView();
            });
      case Routes.inputApi:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => BlocProvider(
            create: (_) => injector.get<InputApiCubit>(),
            child: const InputApiView(),
          ),
        );

      case Routes.conservation:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const ConversationView(),
        );

      default:
        return unDefinedRoute();
    }
  }

  static Route unDefinedRoute([String message = 'Page not founds']) {
    return MaterialPageRoute(
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Error'),
          ),
          body: Center(
            child: Text(message),
          ),
        );
      },
    );
  }
}
