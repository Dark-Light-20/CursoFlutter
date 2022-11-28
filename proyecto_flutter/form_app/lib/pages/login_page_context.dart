import 'package:flutter/material.dart';
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
                const SizedBox(height: 30)
              ]),
            )
          ]),
        ),
      ),
    );
  }
}
