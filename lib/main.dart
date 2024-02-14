import 'package:flutter/material.dart';
import 'package:flutter_assigment09/app_routes.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRouter.welcome,
      routes: AppRouter.routes,
    );
  }
}
