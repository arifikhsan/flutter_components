import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Components'),
        centerTitle: true,
      ),
      body: Container(
        margin: const EdgeInsets.only(top: 8),
        child: Center(
          child: ListView(
            children: <Widget>[
              _buildListTile(
                  context, 'Navigation Drawer', '/navigation_drawer'),
              ListTile(
                title: const Text(
                  'Provider',
                  style: TextStyle(color: Colors.blue),
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/provider');
                },
              ),
              ListTile(
                title: const Text(
                  'Hive',
                  style: TextStyle(color: Colors.blue),
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/hive');
                },
              ),
              ListTile(
                title: const Text(
                  'ExpansionTile',
                  style: TextStyle(color: Colors.blue),
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/expansion_tile');
                },
              ),
              ListTile(
                title: const Text(
                  'Reorderable List View',
                  style: TextStyle(color: Colors.blue),
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/reorderable_list');
                },
              ),
              ListTile(
                title: const Text(
                  'Image Page',
                  style: TextStyle(color: Colors.blue),
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/image');
                },
              ),
              ListTile(
                title: const Text(
                  'Inherited Widget',
                  style: TextStyle(color: Colors.blue),
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/inherited_widget');
                },
              ),
              ListTile(
                title: const Text(
                  'Animation',
                  style: TextStyle(color: Colors.blue),
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/animation');
                },
              ),
              ListTile(
                title: const Text(
                  'Animated Cross Fade',
                  style: TextStyle(color: Colors.blue),
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/animated_cross_fade');
                },
              ),
              ListTile(
                title: const Text(
                  'Animated Container',
                  style: TextStyle(color: Colors.blue),
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/animated_container');
                },
              ),
              ListTile(
                title: const Text(
                  'Animated Builder',
                  style: TextStyle(color: Colors.blue),
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/animated_builder');
                },
              ),
              ListTile(
                title: const Text(
                  'Animated Widget',
                  style: TextStyle(color: Colors.blue),
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/animated_widget');
                },
              ),
              ListTile(
                title: const Text(
                  'Shared Preferences',
                  style: TextStyle(color: Colors.blue),
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/shared_preferences');
                },
              ),
              ListTile(
                title: const Text(
                  'Future Builder',
                  style: TextStyle(color: Colors.blue),
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/future_builder');
                },
              ),
              ListTile(
                title: const Text(
                  'Chopper',
                  style: TextStyle(color: Colors.blue),
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/chopper');
                },
              ),
              ListTile(
                title: const Text(
                  'Dialog',
                  style: TextStyle(color: Colors.blue),
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/dialog');
                },
              ),
              ListTile(
                title: const Text(
                  'Flushbar',
                  style: TextStyle(color: Colors.blue),
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/flushbar');
                },
              ),
              ListTile(
                title: const Text(
                  'Snackbar',
                  style: TextStyle(color: Colors.blue),
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/snackbar');
                },
              ),
              ListTile(
                title: const Text(
                  'Bottom Tabbar',
                  style: TextStyle(color: Colors.blue),
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/bottom_tabbar');
                },
              ),
              ListTile(
                title: const Text(
                  'Tabbar',
                  style: TextStyle(color: Colors.blue),
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/tabbar');
                },
              ),
              ListTile(
                title: const Text(
                  'Opacity Animations',
                  style: TextStyle(color: Colors.blue),
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/opacity_animation');
                },
              ),
              ListTile(
                title: const Text(
                  'Counter Bloc',
                  style: TextStyle(color: Colors.blue),
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/bloc');
                },
              ),
              ListTile(
                title: const Text(
                  'Sliver Appbar',
                  style: TextStyle(color: Colors.blue),
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/sliver_appbar');
                },
              ),
              ListTile(
                title: const Text(
                  'Appbar',
                  style: TextStyle(color: Colors.blue),
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/appbar');
                },
              ),
              ListTile(
                title: const Text(
                  'Sizedbox',
                  style: TextStyle(color: Colors.blue),
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/sizedbox');
                },
              ),
              ListTile(
                title: const Text(
                  'Clip',
                  style: TextStyle(color: Colors.blue),
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/clip');
                },
              ),
              ListTile(
                title: const Text(
                  'List View Builder Two',
                  style: TextStyle(color: Colors.blue),
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/list_view_two');
                },
              ),
              ListTile(
                title: const Text(
                  'List Tile',
                  style: TextStyle(color: Colors.blue),
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/list_tile');
                },
              ),
              ListTile(
                title: const Text(
                  'Grid List',
                  style: TextStyle(color: Colors.blue),
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/grid_list');
                },
              ),
              ListTile(
                title: const Text(
                  'Stack',
                  style: TextStyle(color: Colors.blue),
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/stack');
                },
              ),
              ListTile(
                title: const Text(
                  'Flexible',
                  style: TextStyle(color: Colors.blue),
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/flexible');
                },
              ),
              ListTile(
                title: const Text(
                  'Tooltip',
                  style: TextStyle(color: Colors.blue),
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/tooltip');
                },
              ),
              ListTile(
                title: const Text(
                  'Floating Action Button',
                  style: TextStyle(color: Colors.blue),
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/floating_action_button');
                },
              ),
              ListTile(
                title: const Text(
                  'Safe Area',
                  style: TextStyle(color: Colors.blue),
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/safe_area');
                },
              ),
              ListTile(
                title: const Text(
                  'Unsafe Area',
                  style: TextStyle(color: Colors.blue),
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/unsafe_area');
                },
              ),
              ListTile(
                title: const Text(
                  'Hello World',
                  style: TextStyle(color: Colors.blue),
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/hello_world');
                },
              ),
              ListTile(
                title: const Text(
                  'Buttons',
                  style: TextStyle(color: Colors.blue),
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/button');
                },
              ),
              ListTile(
                title: const Text(
                  'Icon',
                  style: TextStyle(color: Colors.blue),
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/icon');
                },
              ),
              ListTile(
                title: const Text(
                  'Icon Button',
                  style: TextStyle(color: Colors.blue),
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/icon_button');
                },
              ),
              ListTile(
                title: const Text(
                  'Simple Text',
                  style: TextStyle(color: Colors.blue),
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/text');
                },
              ),
              ListTile(
                title: const Text(
                  'Card',
                  style: TextStyle(color: Colors.blue),
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/card');
                },
              ),
              ListTile(
                title: const Text(
                  'Dropdown Button',
                  style: TextStyle(color: Colors.blue),
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/dropdown_button');
                },
              ),
              ListTile(
                title: const Text(
                  'Text field',
                  style: TextStyle(color: Colors.blue),
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/text_field');
                },
              ),
              ListTile(
                title: const Text(
                  'Stateful Widgets',
                  style: TextStyle(color: Colors.blue),
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/stateful_widgets');
                },
              ),
              ListTile(
                title: const Text(
                  'Stateless Widgets',
                  style: TextStyle(color: Colors.blue),
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/stateless_widgets');
                },
              ),
              ListTile(
                title: const Text(
                  'Form',
                  style: TextStyle(color: Colors.blue),
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/form');
                },
              ),
              ListTile(
                title: const Text(
                  'ListView Builder',
                  style: TextStyle(color: Colors.blue),
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/list_view');
                },
              ),
              ListTile(
                title: const Text(
                  'Placeholder',
                  style: TextStyle(color: Colors.blue),
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/placeholder');
                },
              ),
              ListTile(
                title: const Text(
                  'Align',
                  style: TextStyle(color: Colors.blue),
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/align');
                },
              ),
              ListTile(
                title: const Text(
                  'Spacer',
                  style: TextStyle(color: Colors.blue),
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/spacer');
                },
              ),
              ListTile(
                title: const Text(
                  'Container',
                  style: TextStyle(color: Colors.blue),
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/container');
                },
              ),
              ListTile(
                title: const Text(
                  'Wrap',
                  style: TextStyle(color: Colors.blue),
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/wrap');
                },
              ),
              ListTile(
                title: const Text(
                  'Chip',
                  style: TextStyle(color: Colors.blue),
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/chip');
                },
              ),
              _buildListTile(
                  context, 'Page View Horizontal', '/page_view_horizontal'),
              _buildListTile(
                  context, 'Page View Vertical', '/page_view_vertical'),
            ],
          ),
        ),
      ),
    );
  }

  ListTile _buildListTile(BuildContext context, String title, String route) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(color: Colors.blue),
      ),
      onTap: () {
        Navigator.pushNamed(context, route);
      },
    );
  }
}
