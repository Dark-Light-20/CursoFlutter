import 'package:flutter/material.dart';

class CounterButtonGlobalKey extends StatefulWidget {
  const CounterButtonGlobalKey({super.key});

  @override
  State<CounterButtonGlobalKey> createState() => CounterButtonGlobalKeyState();
}

class CounterButtonGlobalKeyState extends State<CounterButtonGlobalKey> {
  int _counter = 0;

  void reset() {
    _counter = 0;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
          foregroundColor: Colors.white,
          elevation: 3,
          backgroundColor: Colors.indigoAccent),
      onPressed: () {
        _counter++;
        setState(() {});
      },
      child: Text(
        _counter.toString(),
        style: const TextStyle(fontSize: 35),
      ),
    );
  }
}
