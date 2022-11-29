import 'package:flutter/material.dart';
import 'package:form_app/providers/login_form_provider.dart';
import 'package:form_app/ui/ui.dart';
import 'package:form_app/widgets/widgets.dart';
import 'package:provider/provider.dart';

class LoginPageProvider extends StatelessWidget {
  const LoginPageProvider({super.key});

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
                ChangeNotifierProvider(
                  create: (_) => LoginFormProvider(),
                  child: const _LoginForm(),
                  // only LoginForm has access to provider
                ),
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
    final loginForm = Provider.of<LoginFormProvider>(context);
    return Form(
      key: loginForm.formKey, // link form with provider by global key
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: Column(children: [
        TextFormField(
            keyboardType: TextInputType.emailAddress,
            onChanged: (value) => loginForm.email = value,
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
          onChanged: (value) => loginForm.password = value,
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
        MaterialButton(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          color: Colors.green,
          onPressed: () {
            if (!loginForm.isValidForm()) return;
            print('valid form');
          },
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 15),
            child: const Text(
              'Ingresar',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ]),
    );
  }
}
