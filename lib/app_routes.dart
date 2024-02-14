import 'package:flutter_assigment09/screens/login_screen.dart';
import 'package:flutter_assigment09/screens/welcome_screen.dart';

class AppRouter {
  static const String welcome = 'welcome';
  static const String login = 'login';

  static get routes => {
        welcome: (context) => const WelcomeScreen(),
        login: (context) => const LoginScreen(),
      };
}
