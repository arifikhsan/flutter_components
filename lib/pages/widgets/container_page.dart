import 'package:flutter/material.dart';

class ContainerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Container'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(16),
                color: Colors.blue,
                child: Text(
                  'container',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(16),
                padding: EdgeInsets.all(16),
                color: Colors.blue,
                child: Text(
                  'Container with padding',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(16),
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Colors.yellow,
                  border: Border.all(
                    color: Colors.blue,
                    width: 2,
                  ),
                ),
                child: Text(
                  'Container with shape',
                  style: TextStyle(
                    color: Colors.blue,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(16),
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.green,
                  shape: BoxShape.circle,
                ),
                child: Text(
                  'Container with round shape',
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(16),
                padding: EdgeInsets.all(16),
                color: Colors.blue,
                width: 100,
                height: 150,
                child: Text(
                  'Container with size',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(16),
                padding: EdgeInsets.all(16),
                color: Colors.blue,
                transform: Matrix4.rotationZ(0.5),
                child: Text(
                  'Container rotated',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              Divider(),
              Container(
                margin: EdgeInsets.all(16),
                padding: EdgeInsets.all(16),
                color: Colors.blue,
                child: Text(
                  'Boring container',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
