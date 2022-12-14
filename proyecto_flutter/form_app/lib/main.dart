import 'package:flutter/material.dart';
import 'package:form_app/pages/pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      initialRoute: 'login',
      routes: {
        // 'login': (context) => const LoginPageContext(),
        'login': (context) => const LoginPageProvider(),
        'home': (context) => const HomePage(),
      },
      theme:
          ThemeData.light().copyWith(scaffoldBackgroundColor: Colors.grey[300]),
    );
  }
}
