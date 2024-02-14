import 'package:flutter_assigment09/screens/login_screen.dart';
import 'package:flutter_assigment09/screens/register_screeen.dart';
import 'package:flutter_assigment09/screens/welcome_screen.dart';

class AppRouter {
  static const String welcome = 'welcome';
  static const String login = 'login';
  static const String register = 'register';

  static get routes => {
        welcome: (context) => const WelcomeScreen(),
        login: (context) => const LoginScreen(),
        register: (context) => const RegisterScreen(),
      };
}
