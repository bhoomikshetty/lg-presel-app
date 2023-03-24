import 'package:flutter/material.dart';
import 'package:lg_presel_app/navigation/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: Colors.black),
      title: 'Lg preselection app',
      onGenerateRoute: AppRoutes.onGeneratedRoutes,
    );
  }
}
