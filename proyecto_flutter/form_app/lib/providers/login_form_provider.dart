import 'package:flutter/material.dart';

class LoginFormProvider extends ChangeNotifier {
  // Global key allow us to get references of type <FormState>
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  String? email = '';
  String? password = '';

  bool isValidForm() {
    print(formKey.currentState?.validate());
    print('email: $email - password: $password');
    return formKey.currentState?.validate() ?? false;
  }
}
