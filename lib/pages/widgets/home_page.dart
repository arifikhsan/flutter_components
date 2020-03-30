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
              _buildListTile(context, 'Expansion Panel', '/expansion_panel'),
              _buildListTile(context, 'Device Info', '/device_info'),
              _buildListTile(context, 'Bottom Sheet', '/bottom_sheet'),
              _buildListTile(context, 'Page Selector', '/page_selector'),
              _buildListTile(
                  context, 'Navigation Drawer', '/navigation_drawer'),
              _buildListTile(context, 'Provider', '/provider'),
              _buildListTile(context, 'Hive', '/hive'),
              _buildListTile(context, 'Expansion Tile', '/expansion_tile'),
              _buildListTile(
                  context, 'Reorderable List View', '/reorderable_list'),
              _buildListTile(context, 'Image Page', '/image'),
              _buildListTile(context, 'Inherited Widget', '/inherited_widget'),
              _buildListTile(context, 'Animation', '/animation'),
              _buildListTile(
                  context, 'Animated Cross Fade', '/animated_cross_fade'),
              _buildListTile(
                  context, 'Animated Container', '/animated_container'),
              _buildListTile(context, 'Animated Builder', '/animated_builder'),
              _buildListTile(context, 'Animated Widget', '/animated_widget'),
              _buildListTile(
                  context, 'Shared Preferences', '/shared_preferences'),
              _buildListTile(context, 'Future Builder', '/future_builder'),
              _buildListTile(context, 'Chopper', '/chopper'),
              _buildListTile(context, 'Dialog', '/dialog'),
              _buildListTile(context, 'Flushbar', '/flushbar'),
              _buildListTile(context, 'Snackbar', '/snackbar'),
              _buildListTile(context, 'Bottom Tabbar', '/bottom_tabbar'),
              _buildListTile(context, 'Tabbar', '/tabbar'),
              _buildListTile(
                  context, 'Opacity Animations', '/opacity_animation'),
              _buildListTile(context, 'Counter Bloc', '/bloc'),
              _buildListTile(context, 'Sliver Appbar', '/sliver_appbar'),
              _buildListTile(context, 'Appbar', '/appbar'),
              _buildListTile(context, 'Sizedbox', '/sizedbox'),
              _buildListTile(context, 'Clip', '/clip'),
              _buildListTile(
                  context, 'List View Builder Two', '/list_view_two'),
              _buildListTile(context, 'List Tile', '/list_tile'),
              _buildListTile(context, 'Grid List', '/grid_list'),
              _buildListTile(context, 'Stack', '/stack'),
              _buildListTile(context, 'Flexible', '/flexible'),
              _buildListTile(context, 'Tooltip', '/tooltip'),
              _buildListTile(
                  context, 'Floating Action Button', '/floating_action_button'),
              _buildListTile(context, 'Safe Area', '/safe_area'),
              _buildListTile(context, 'Tooltip', '/tooltip'),
              _buildListTile(context, 'Unsafe Area', '/unsafe_area'),
              _buildListTile(context, 'Hello World', '/hello_world'),
              _buildListTile(context, 'Buttons', '/button'),
              _buildListTile(context, 'Icon', '/icon'),
              _buildListTile(context, 'Icon Button', '/icon_button'),
              _buildListTile(context, 'Simple Text', '/text'),
              _buildListTile(context, 'Card', '/card'),
              _buildListTile(context, 'Dropdown Button', '/dropdown_button'),
              _buildListTile(context, 'Text field', '/text_field'),
              _buildListTile(context, 'Stateful Widgets', '/stateful_widgets'),
              _buildListTile(
                  context, 'Stateless Widgets', '/stateless_widgets'),
              _buildListTile(context, 'Form', '/form'),
              _buildListTile(context, 'ListView Builder', '/list_view'),
              _buildListTile(context, 'Placeholder', '/placeholder'),
              _buildListTile(context, 'Align', '/align'),
              _buildListTile(context, 'Spacer', '/spacer'),
              _buildListTile(context, 'Container', '/container'),
              _buildListTile(context, 'Wrap', '/wrap'),
              _buildListTile(context, 'Chip', '/chip'),
              _buildListTile(context, 'Spacer', '/spacer'),
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
