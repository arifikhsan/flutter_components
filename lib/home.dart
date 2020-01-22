import 'package:flutter/material.dart';
import 'package:flutter_components/component.dart';

class Home extends StatelessWidget {
  const Home({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
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
            ],
          ),
        ),
      ),
    );
  }
}
