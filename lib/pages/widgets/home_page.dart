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
                  'List View Builder Two',
                  style: TextStyle(color: Colors.blue),
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/list_view_two');
                },
              ),
              ListTile(
                title: Text(
                  'List Tile',
                  style: TextStyle(color: Colors.blue),
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/list_tile');
                },
              ),
              ListTile(
                title: Text(
                  'Grid List',
                  style: TextStyle(color: Colors.blue),
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/grid_list');
                },
              ),
              ListTile(
                title: Text(
                  'Stack',
                  style: TextStyle(color: Colors.blue),
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/stack');
                },
              ),
              ListTile(
                title: Text(
                  'Flexible',
                  style: TextStyle(color: Colors.blue),
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/flexible');
                },
              ),
              ListTile(
                title: Text(
                  'Tooltip',
                  style: TextStyle(color: Colors.blue),
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/tooltip');
                },
              ),
              ListTile(
                title: Text(
                  'Floating Action Button',
                  style: TextStyle(color: Colors.blue),
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/floating_action_button');
                },
              ),
              ListTile(
                title: Text(
                  'Safe Area',
                  style: TextStyle(color: Colors.blue),
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/safe_area');
                },
              ),
              ListTile(
                title: Text(
                  'Unsafe Area',
                  style: TextStyle(color: Colors.blue),
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/unsafe_area');
                },
              ),
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
              ),
              ListTile(
                title: Text(
                  'ListView Builder',
                  style: TextStyle(color: Colors.blue),
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/list_view');
                },
              ),
              ListTile(
                title: Text(
                  'Placeholder',
                  style: TextStyle(
                    color: Colors.blue
                  ),
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/placeholder');
                },
              ),
              ListTile(
                title: Text(
                  'Align',
                  style: TextStyle(
                    color: Colors.blue
                  ),
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/align');
                },
              ),
              ListTile(
                title: Text(
                  'Spacer',
                  style: TextStyle(
                    color: Colors.blue
                  ),
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/spacer');
                },
              ),
              ListTile(
                title: Text(
                  'Container',
                  style: TextStyle(
                    color: Colors.blue
                  ),
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/container');
                },
              ),
              ListTile(
                title: Text(
                  'Wrap',
                  style: TextStyle(
                    color: Colors.blue
                  ),
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/wrap');
                },
              ),
              ListTile(
                title: Text(
                  'Chip',
                  style: TextStyle(
                    color: Colors.blue
                  ),
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/chip');
                },
              ),
              ListTile(
                title: Text(
                  'Page View Horizontal',
                  style: TextStyle(
                    color: Colors.blue
                  ),
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/page_view_horizontal');
                },
              ),
              ListTile(
                title: Text(
                  'Page View Vertical',
                  style: TextStyle(
                    color: Colors.blue
                  ),
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/page_view_vertical');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
