import 'package:flutter/material.dart';

class ListKeyPage extends StatefulWidget {
  const ListKeyPage({super.key});

  @override
  State<ListKeyPage> createState() => _ListKeyPageState();
}

class _ListKeyPageState extends State<ListKeyPage> {
  bool _enabledEmail = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          Switch(
            value: _enabledEmail,
            onChanged: (value) {
              _enabledEmail = value;
              setState(() {});
            },
          )
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          /* 
            If both text fields don't have keys, Flutter understands when one
            of them is not rendering, its content passes to the other. 
            To avoid this it must to be a key specificated for both inputs.
          */
          if (_enabledEmail)
            const TextField(
              key: Key('emailKey'),
              decoration: InputDecoration(label: Text('Email')),
            ),
          const TextField(
            key: Key('passwordKey'),
            decoration: InputDecoration(label: Text('Password')),
          ),
        ],
      ),
    );
  }
}
