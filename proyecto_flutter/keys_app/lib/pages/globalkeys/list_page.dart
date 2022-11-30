import 'package:flutter/material.dart';

class ListPage extends StatefulWidget {
  const ListPage({super.key});

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  final listKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: OrientationBuilder(
        builder: (context, orientation) {
          final listView = ListView.builder(
            key: listKey,
            itemBuilder: (context, index) => ListTile(title: Text('$index')),
            itemCount: 1000,
          );
          /* 
            Without a key, the list doesn't keep track of scroll when changing
            orientation. 
            It needs a global key for the list view builder.
          */
          if (orientation == Orientation.portrait) {
            return Column(children: [
              const SizedBox(height: 10),
              const Text(
                'Portrait',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Expanded(child: listView)
            ]);
          }
          return Row(children: [
            const Expanded(
              child: Text(
                'Landscape',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Expanded(child: listView)
          ]);
        },
      ),
    );
  }
}
