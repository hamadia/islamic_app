import 'package:flutter/material.dart';
import 'package:islamic_app/core/routing/routes.dart';
import 'package:islamic_app/features/intro/ui/intro_screens.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.introScreens:
        return MaterialPageRoute(
          builder: (_) => const IntroScreens(),
        );
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => const Placeholder(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
