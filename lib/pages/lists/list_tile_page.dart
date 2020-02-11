import 'package:flutter/material.dart';

class ListTilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Tile'),
      ),
      body: Column(
        children: <Widget>[
          const ListTile(
            title: Text('Just a title'),
          ),
          const Divider(),
          ListTile(
            title: const Text('With leading and trailing'),
            leading: Icon(Icons.tag_faces),
            trailing: Icon(Icons.sim_card),
          ),
          const Divider(),
          const ListTile(
            title: Text('Title'),
            subtitle: Text('Subtitle'),
          ),
          const Divider(),
          const ListTile(
            title: Text('Three lines'),
            subtitle: Text('Subtitle'),
            isThreeLine: true,
          ),
          const Divider(),
          const ListTile(
            title: Text('Dense'),
            dense: true,
          ),
          const Divider(),
          const ListTile(
            title: Text('Dense title'),
            subtitle: Text('Dense subtitle'),
            dense: true,
          ),
          const Divider(),
        ],
      ),
    );
  }
}
