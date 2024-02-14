import 'package:flutter_assigment09/screens/welcome_screen.dart';

class AppRouter {
  static const String welcome = 'welcome';
  static const String dashboard = 'dashboard';

  static get routes => {
        welcome: (context) => const WelcomeScreen(),
      };
}
