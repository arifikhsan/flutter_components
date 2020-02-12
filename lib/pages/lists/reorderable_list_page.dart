import 'package:flutter/material.dart';

class ReorderableListPage extends StatefulWidget {
  @override
  _ReorderableListPageState createState() => _ReorderableListPageState();
}

class _ReorderableListPageState extends State<ReorderableListPage> {
  bool reserveSort = false;
  static final List<String> items = <String>[
    'A',
    'B',
    'C',
    'D',
    'E',
    'F',
    'G',
    'H',
    'I',
    'J',
    'K',
    'L',
    'M',
    'N',
    'O',
    'P',
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reorderable List'),
      ),
      body: const Center(
        child: Text('Hello World'),
      ),
    );
  }
}

class ListItem {
  String value;
  bool checked;

  ListItem({value, checked});
}
