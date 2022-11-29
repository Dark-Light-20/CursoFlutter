import 'package:flutter/material.dart';

class NumbersPage extends StatefulWidget {
  const NumbersPage({super.key});

  @override
  State<NumbersPage> createState() => _NumbersPageState();
}

class _NumbersPageState extends State<NumbersPage> {
  final List<int> _numbers = [];

  @override
  void initState() {
    super.initState();
    _numbers.addAll(List.generate(100, (index) => index));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ReorderableListView.builder(
          onReorder: (oldIndex, newIndex) {
            if (oldIndex < newIndex) {
              newIndex--; // Fix index when deleted downside
            }
            // We have to remove old index
            final item = _numbers.removeAt(oldIndex);
            // And insert its value to new index
            _numbers.insert(newIndex, item);
          },
          itemBuilder: (context, index) {
            final value = _numbers[index];
            return ListTile(
              key: ValueKey<int>(value),
              title: Text(
                value.toString(),
                style: const TextStyle(fontSize: 30),
              ),
            );
          },
          itemCount: _numbers.length,
        ),
      ),
    );
  }
}
