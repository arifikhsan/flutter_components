import 'package:flutter/material.dart';
import 'package:flutter_components/component.dart';

class Home extends StatelessWidget {
  const Home({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Component> components = <Component>[
      Component(name: 'Hello World', slug: 'hello_world'),
      Component(name: 'Text', slug: 'text'),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              RaisedButton(
                child: Text('Hello World'),
                onPressed: () {
                  Navigator.pushNamed(context, '/hello_world');
                }
              ),
              RaisedButton(
                child: Text('Buttons'),
                onPressed: () {
                  Navigator.pushNamed(context, '/button');
                }
              ),
            ],
          ),
        ),
      ),
    );
  }
}
