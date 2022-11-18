import 'package:flutter/material.dart';
import 'package:intro_widgets/pages/counter/counter_page.dart';
import 'package:intro_widgets/pages/timer/timer_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // hide red debug icon in corner
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: const CounterPage(initialValue: 10),
      home: const TimerPage(),
    );
  }
}
