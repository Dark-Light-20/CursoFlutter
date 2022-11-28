import 'package:flutter/material.dart';
import 'package:form_app/ui/ui.dart';
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
                const _LoginForm(),
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
    return Form(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: Column(children: [
        TextFormField(
            keyboardType: TextInputType.emailAddress,
            decoration: StyleDecorationsInput.loginInputDecoration(
              hintText: 'email@mail.com',
              prefixIcon: Icons.alternate_email_rounded,
              labelText: 'Correo electrónico',
            ),
            validator: (value) {
              String pattern =
                  r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
              RegExp regExp = RegExp(pattern);
              return regExp.hasMatch(value ?? '')
                  ? null
                  : 'No coincide con formato de correo electrónico';
            }),
        TextFormField(
          obscureText: true,
          decoration: StyleDecorationsInput.loginInputDecoration(
            hintText: '********',
            labelText: 'Contraseña',
            prefixIcon: Icons.lock_open_outlined,
          ),
          validator: (value) {
            value = value?.replaceAll(' ', '');
            return (value != null && value.length >= 6)
                ? null
                : 'Contraseña debe ser mínima de 6 caracteres';
          },
        ),
        const SizedBox(height: 30),
        Builder(
          builder: (context) => MaterialButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            color: Colors.green,
            onPressed: () => _submit(context),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 15),
              child: const Text(
                'Ingresar',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
      ]),
    );
  }

  void _submit(BuildContext context) {
    // final formState = context.findAncestorStateOfType<FormState>();
    final formState = Form.of(context);
    if (formState!.validate()) {
      print('valid data');
    }
  }
}
