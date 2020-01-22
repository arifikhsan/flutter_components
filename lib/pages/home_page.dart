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
              RaisedButton(
                  color: Colors.blue,
                  child: Text(
                    'Simple Text',
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/text');
                  }),
              RaisedButton(
                color: Colors.blue,
                child: Text(
                  'Card',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/card');
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
