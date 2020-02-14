import 'package:flutter/material.dart';

class PageSelectorPage extends StatelessWidget {
  final icons = <Icon>[
    Icon(Icons.event),
    Icon(Icons.home),
    Icon(Icons.android),
    Icon(Icons.alarm),
    Icon(Icons.face),
    Icon(Icons.language),
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page Selector'),
      ),
      body: DefaultTabController(
        length: icons.length,
        child: Builder(
          builder: (BuildContext context) {
            return Column(
              children: <Widget>[
                Expanded(
                  child: IconTheme(
                    data: IconThemeData(
                      size: 128,
                      color: Colors.green,
                    ),
                    child: TabBarView(
                      children: icons,
                    ),
                  ),
                ),
                TabPageSelector(),
                RaisedButton(
                  child: Text('Skip'),
                  color: Colors.green,
                  onPressed: () {
                    final TabController tabController =
                        DefaultTabController.of(context);
                    if (!tabController.indexIsChanging) {
                      tabController.animateTo(icons.length - 1);
                    }
                  },
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
