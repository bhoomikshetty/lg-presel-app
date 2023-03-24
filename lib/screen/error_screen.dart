import 'package:flutter/material.dart';

class ErrorScreen extends StatelessWidget {
  RouteSettings settings;
  ErrorScreen({super.key,required this.settings});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('No route defined for ${settings.name}'),
      ),
    );
  }
}