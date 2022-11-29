import 'package:flutter/material.dart';
import 'package:keys_app/pages/pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Keys App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: const AnimatedText(),
      // home: const ListKeyPage(),
      home: const NumbersPage(),
    );
  }
}
