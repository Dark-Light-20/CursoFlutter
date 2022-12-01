import 'package:flutter/material.dart';
import 'package:keys_app/widgets/widgets.dart';

class MovableWidget extends StatefulWidget {
  const MovableWidget({super.key});

  @override
  State<MovableWidget> createState() => _MovableWidgetState();
}

class _MovableWidgetState extends State<MovableWidget> {
  bool _inBody = true;
  final _buttonKey = GlobalKey<CounterButtonGlobalKeyState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: !_inBody ? CounterButtonGlobalKey(key: _buttonKey) : null,
        backgroundColor: Colors.black87,
        actions: [
          TextButton(
            onPressed: () {
              _buttonKey.currentState?.reset();
            },
            child: const Text('Reset'),
          ),
          Switch(
            value: _inBody,
            onChanged: (value) {
              _inBody = value;
              setState(() {});
            },
          )
        ],
      ),
      body: _inBody ? CounterButtonGlobalKey(key: _buttonKey) : null,
    );
  }
}
