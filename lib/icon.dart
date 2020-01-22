import 'package:flutter/material.dart';

void main() => runApp(IconPage());

class IconPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Icon(
                    Icons.image,
                    size: 64,
                    color: Colors.blue,
                  ),
                  Icon(
                    Icons.info,
                    size: 64,
                    color: Colors.blue,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Icon(
                    Icons.insert_chart,
                    size: 64,
                    color: Colors.blue,
                  ),
                  Icon(
                    Icons.insert_invitation,
                    size: 64,
                    color: Colors.blue,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Icon(
                    Icons.lens,
                    size: 64,
                    color: Colors.blue,
                  ),
                  Icon(
                    Icons.mood,
                    size: 64,
                    color: Colors.blue,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
