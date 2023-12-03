import 'package:advanced_mobile_gpt/clean_architectures/presentation/conversation/views/conversation_view.dart';
import 'package:advanced_mobile_gpt/clean_architectures/presentation/image_generate/views/image_generate_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:advanced_mobile_gpt/clean_architectures/presentation/chat_bot/views/chat_bot_view.dart';
import 'package:advanced_mobile_gpt/clean_architectures/presentation/dashboard/views/dashboard_view.dart';
import 'package:advanced_mobile_gpt/clean_architectures/presentation/splash/views/splash_view.dart';
import 'package:advanced_mobile_gpt/clean_architectures/presentation/writer/views/writer_view.dart';
import 'package:advanced_mobile_gpt/routes/routes.dart';

import '../core/components/layout/setting_layout/views/passcode_screen.dart';

class MainRoutes {
  static Map<String, WidgetBuilder> getRoutesWithSettings() {
    final routes = {Routes.auth: (context) => const SizedBox()};
    return routes;
  }

  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.auth:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) {
            return const SizedBox();
          },
        );
      case Routes.passCode:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) {
            return PassCodeScreen(routes: settings.arguments.toString());
          },
        );
      case Routes.splash:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) {
            return const ProviderScope(child: SplashView());
          },
        );
      case Routes.dashboard:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) {
            return const ProviderScope(child: DashboardView());
          },
        );
      case Routes.chatBot:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) {
            return const ChatBotView();
          },
        );
      case Routes.writer:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) {
            return const WriterView();
          },
        );
      case Routes.imageGenerate:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) {
            return const ImageGenerateView();
          },
        );
      case Routes.conservation:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) {
            return const ConversationView();
          },
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
