import 'package:flutter/material.dart';
import 'package:lg_presel_app/screen/error_screen.dart';
import 'package:lg_presel_app/screen/main_screen.dart';
import 'package:lg_presel_app/screen/splash_screen.dart';

class AppRoutes {
  static Route onGeneratedRoutes(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case '/mainScreen':
        return MaterialPageRoute(builder: (_) => const MainScreen());
      default:
        return MaterialPageRoute(
            builder: (_) => ErrorScreen(settings: settings));
    }
  }
}
