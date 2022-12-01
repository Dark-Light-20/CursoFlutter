import 'package:flutter/material.dart';

class LoginPageArgs extends StatelessWidget {
  const LoginPageArgs({super.key});

  @override
  Widget build(BuildContext context) {
    // Get route arguments
    final modalRoute = ModalRoute.of(context)!;
    final email = modalRoute.settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Center(child: Text('User email arg: $email')),
    );
  }
}
