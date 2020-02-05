import 'package:flutter/material.dart';

class ListTilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Tile'),
      ),
      body: Column(
        children: <Widget>[
          ListTile(
            title: Text('Just a title'),
          ),
          Divider(),
          ListTile(
            title: Text('With leading and trailing'),
            leading: Icon(Icons.tag_faces),
            trailing: Icon(Icons.sim_card),
          ),
          Divider(),
          ListTile(
            title: Text('Title'),
            subtitle: Text('Subtitle'),
          ),
          Divider(),
          ListTile(
            title: Text("Three lines"),
            subtitle: Text('Subtitle'),
            isThreeLine: true,
          ),
          Divider(),
          ListTile(
            title: Text('Dense'),
            dense: true,
          ),
          Divider(),
          ListTile(
            title: Text('Dense title'),
            subtitle: Text('Dense subtitle'),
            dense: true,
          ),
          Divider(),
        ],
      ),
    );
  }
}
