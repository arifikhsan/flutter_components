import 'package:flutter/material.dart';

class ListViewBuilderPage extends StatefulWidget {
  @override
  _ListViewBuilderPageState createState() => _ListViewBuilderPageState();
}

class _ListViewBuilderPageState extends State<ListViewBuilderPage> {
  final List<String> entries = <String>[
    'item 1',
    'item 2',
    'item 3',
    'item 4',
    'item 5',
    'item 6',
    'item 7',
    'item 8',
    'item 9',
    'item 10',
    'item 11',
    'item 12',
    'item 13',
    'item 14',
    'item 15',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView Builder'),
      ),
      body: ListView.separated(
        padding: EdgeInsets.all(8),
        itemCount: entries.length,
        separatorBuilder: (BuildContext context, int index) {
          return Divider(
            thickness: 2,
          );
        },
        itemBuilder: (BuildContext context, int index) {
          return Container(
            color: Colors.blue.shade500,
            child: ListTile(
              title: Text(
                'Person ${index + 1}',
                style: TextStyle(color: Colors.white),
              ),
              subtitle: Text(
                '${entries[index]}',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                Scaffold.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Hello, i am a person ${index + 1}'),
                  ),
                );
              },
              leading: GestureDetector(
                child: Container(
                  width: 48,
                  height: 48,
                  padding: EdgeInsets.symmetric(vertical: 4),
                  alignment: Alignment.center,
                  child: CircleAvatar(
                    child: Icon(Icons.person),
                    backgroundColor: Colors.white,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
