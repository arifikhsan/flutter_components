import 'package:flutter/material.dart';

class PlaceholderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Placeholder'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            height: 100,
            width: 150,
            child: Placeholder(
              color: Colors.red,
              strokeWidth: 1,
            ),
          ),
          Container(
            height: 100,
            width: 100,
            child: Placeholder(
              color: Colors.green,
            ),
          )
        ],
      ),
    );
  }
}
