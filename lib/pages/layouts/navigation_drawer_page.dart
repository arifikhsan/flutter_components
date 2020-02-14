import 'package:flutter/material.dart';

class NavigationDrawerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navigation Drawer'),
      ),
      body: const Center(
        child: Text('Hello World'),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('Arif Ikhsanudin'),
              accountEmail: Text('arif.ikhsanudin.developer@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.green,
                child: FlutterLogo(
                  size: 48,
                ),
              ),
              otherAccountsPictures: <Widget>[
                CircleAvatar(
                  backgroundColor: Colors.yellow,
                  child: Text('A'),
                ),
                CircleAvatar(
                  backgroundColor: Colors.red,
                  child: Text('I'),
                ),
              ],
            ),
            ListTile(
              title: Text('Hello'),
            ),
            ListTile(
              title: Text('World'),
            ),
            ListTile(
              title: Text('World'),
            ),
            ListTile(
              title: Text('World'),
            ),
            ListTile(
              title: Text('World'),
            ),
            ListTile(
              title: Text('World'),
            ),
            ListTile(
              title: Text('World'),
            ),
            ListTile(
              title: Text('World'),
            ),
            ListTile(
              title: Text('World'),
            ),
            ListTile(
              title: Text('World'),
            ),
            ListTile(
              title: Text('World'),
            ),
          ],
        ),
      ),
    );
  }
}
