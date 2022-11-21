import 'package:didupdatewidget/pages/timer/timer_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _showTimer = true;
  Color _color = Colors.primaries.first;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          if (_showTimer)
            TimerView(
              color: _color,
            ),
          Expanded(
              child: ListView.builder(
            itemBuilder: (_, index) {
              final color = Colors.primaries[index];
              return GestureDetector(
                onTap: () {
                  _color = color;
                  setState(() {});
                },
                child: Container(
                  color: color,
                  height: 40,
                ),
              );
            },
            itemCount: Colors.primaries.length,
          ))
        ]),
      ),
    );
  }
}
