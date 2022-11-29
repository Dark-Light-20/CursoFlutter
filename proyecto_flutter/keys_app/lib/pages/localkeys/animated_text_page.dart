import 'package:flutter/material.dart';

class AnimatedText extends StatefulWidget {
  const AnimatedText({super.key});

  @override
  State<AnimatedText> createState() => _AnimatedTextState();
}

class _AnimatedTextState extends State<AnimatedText> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedSwitcher(
          duration: Duration(milliseconds: 200),
          transitionBuilder: (child, animation) => ScaleTransition(
            scale: animation,
            child: child,
          ),
          /* child: _counter % 2 == 0
              ? const CircularProgressIndicator()
              : Text(
                  _counter.toString(),
                  style: const TextStyle(fontSize: 50),
                ), */
          child: Text(
            // key: ValueKey<String>(_counter.toString()),
            key: Key(_counter.toString()),
            _counter.toString(),
            style: const TextStyle(fontSize: 50),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _counter++;
          setState(() {});
        },
      ),
    );
  }
}
