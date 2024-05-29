import 'package:flutter/material.dart';
import 'package:tapu_tapi_shop/features/authenthication/screens/login/login.dart';
import 'package:tapu_tapi_shop/features/authenthication/screens/signup/signup.dart';

class LoginOrRegister extends StatefulWidget {
  const LoginOrRegister({super.key});

  @override
  State<LoginOrRegister> createState() => _LoginOrRegisterState();
}

class _LoginOrRegisterState extends State<LoginOrRegister> {
  bool showLoginScreen = true;

  void togglePage() {
    setState(() {
      showLoginScreen = !showLoginScreen;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginScreen) {
      return LoginScreen();
    } else {
      return SignupScreen();
    }
  }
}
