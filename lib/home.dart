import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Components'),
        centerTitle: true,
      ),
      body: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              RaisedButton(
                color: Colors.blue,
                child: Text(
                  'Hello World',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/hello_world');
                },
              ),
              RaisedButton(
                color: Colors.blue,
                child: Text(
                  'Buttons',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/button');
                },
              ),
              RaisedButton(
                color: Colors.blue,
                child: Text(
                  'Icon',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/icon');
                },
              ),
              RaisedButton(
                color: Colors.blue,
                child: Text(
                  'IconButton',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/icon_button');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
