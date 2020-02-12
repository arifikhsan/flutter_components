import 'package:flutter/material.dart';

class ListViewBuilderTwoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('List View Builder Two'),
        ),
        body: ListView.builder(
          itemCount: 20,
          padding: const EdgeInsets.all(16),
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: <Widget>[
                ListTile(
                  title: Text('Item $index'),
                  leading: CircleAvatar(
                    child: Text(
                      '$index',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                  trailing: Icon(Icons.dashboard),
                ),
                const Divider(),
              ],
            );
          },
        ));
  }
}
