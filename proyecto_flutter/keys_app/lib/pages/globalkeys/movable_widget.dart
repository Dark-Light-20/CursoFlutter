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
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: const Drawer(),
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.widgets),
          onPressed: () => _scaffoldKey.currentState?.openDrawer(),
        ),
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
