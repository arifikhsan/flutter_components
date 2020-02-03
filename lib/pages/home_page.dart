import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Components'),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.only(top: 8),
        child: Center(
          child: ListView(
            children: <Widget>[
              ListTile(
                title: Text(
                  'Hello World',
                  style: TextStyle(color: Colors.blue),
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/hello_world');
                },
              ),
              ListTile(
                title: Text(
                  'Buttons',
                  style: TextStyle(color: Colors.blue),
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/button');
                },
              ),
              ListTile(
                title: Text(
                  'Icon',
                  style: TextStyle(color: Colors.blue),
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/icon');
                },
              ),
              ListTile(
                title: Text(
                  'Icon Button',
                  style: TextStyle(color: Colors.blue),
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/icon_button');
                },
              ),
              ListTile(
                title: Text(
                  'Simple Text',
                  style: TextStyle(color: Colors.blue),
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/text');
                },
              ),
              ListTile(
                title: Text(
                  'Card',
                  style: TextStyle(color: Colors.blue),
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/card');
                },
              ),
              ListTile(
                title: Text(
                  'Dropdown Button',
                  style: TextStyle(color: Colors.blue),
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/dropdown_button');
                },
              ),
              ListTile(
                title: Text(
                  'Text field',
                  style: TextStyle(color: Colors.blue),
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/text_field');
                },
              ),
              ListTile(
                title: Text(
                  'Stateful Widgets',
                  style: TextStyle(color: Colors.blue),
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/stateful_widgets');
                },
              ),
              ListTile(
                title: Text(
                  'Form',
                  style: TextStyle(color: Colors.blue),
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/form');
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
