import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:form_app/ui/ui.dart';
import 'package:form_app/widgets/card_container.dart';
import 'package:form_app/widgets/widgets.dart';

class LoginPageContext extends StatelessWidget {
  const LoginPageContext({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LoginBackground(
        child: SingleChildScrollView(
          child: Column(children: [
            const SizedBox(height: 250),
            CardContainer(
              child: Column(children: [
                const SizedBox(height: 10),
                Text('Login', style: Theme.of(context).textTheme.headline4),
                const SizedBox(height: 30),
                _LoginForm(),
              ]),
            ),
            const SizedBox(height: 50),
            const Text(
              'Crear una nueva cuenta',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 50),
          ]),
        ),
      ),
    );
  }
}

class _LoginForm extends StatelessWidget {
  const _LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Form(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: Column(children: [
          TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: StyleDecorationsInput.loginInputDecoration(
                hintText: 'email@mail.com',
                labelText: 'Correo electrónico',
                prefixIcon: Icons.alternate_email_rounded,
              ),
              validator: (value) {
                String pattern =
                    r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
                RegExp regExp = RegExp(pattern);
                return regExp.hasMatch(value ?? '')
                    ? null
                    : 'No coincide con formato de correo electrónico';
              }),
          TextFormField()
        ]),
      ),
    );
  }
}
