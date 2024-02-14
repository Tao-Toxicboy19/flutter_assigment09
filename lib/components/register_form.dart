import 'package:flutter/material.dart';
import 'package:flutter_assigment09/components/custom_buttom.dart';
import 'package:flutter_assigment09/components/custom_textfield.dart';
import 'package:flutter_assigment09/utils/logger.dart';

class RegisterForm extends StatelessWidget {
  RegisterForm({super.key});

  final _formKeyLogin = GlobalKey<FormState>();

  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKeyLogin,
      child: Column(
        children: [
          customTextField(
            controller: _usernameController,
            obscureText: false,
            labelText: "Username",
            validator: (value) => (value == null || value.isEmpty)
                ? 'Please enter some text'
                : null,
            underlineText: true,
          ),
          const SizedBox(height: 10.0),
          customTextField(
            controller: _passwordController,
            obscureText: true,
            labelText: "Password",
            validator: (value) => (value == null || value.isEmpty)
                ? 'Please enter some text'
                : null,
            underlineText: true,
          ),
          const SizedBox(height: 16.0),
          SizedBox(
            width: double.infinity,
            height: 45.0,
            child: customButtom(
              labelText: "Create Account",
              onPressd: () => handleSubmit(context),
            ),
          )
        ],
      ),
    );
  }

  handleSubmit(BuildContext context) {
    logger.f(_usernameController.text);
    logger.f(_passwordController.text);
  }
}
