import 'dart:async';

import 'package:flutter/material.dart';

class TimerView extends StatefulWidget {
  const TimerView({super.key, required this.color});

  final Color color;

  @override
  State<TimerView> createState() => _TimerViewState();
}

class _TimerViewState extends State<TimerView> {
  int _time = 0;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(
      const Duration(seconds: 1),
      (_) {
        _time++;
        setState(() {});
      },
    );
  }

  @override
  void didUpdateWidget(covariant TimerView oldWidget) {
    super.didUpdateWidget(oldWidget);
    print("old: ${oldWidget.color}");
    print("current: ${widget.color}");

    if (oldWidget.color != widget.color) {
      print("The colors are different");
      _time = 0;
    } else {
      print("The colors are the same");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      "$_time",
      style: TextStyle(fontSize: 50, color: widget.color),
    );
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }
}
