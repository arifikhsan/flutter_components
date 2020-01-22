import 'package:flutter/material.dart';

class ButtonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buttons'),
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  RaisedButton(
                    color: Colors.blue,
                    child: Text(
                      'RaisedButton',
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {},
                  ),
                  RaisedButton(
                    color: Colors.blue,
                    child: Text(
                      'DisabledRaisedButton',
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: null,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  FlatButton(
                    color: Colors.blue,
                    child: Text(
                      'FlatButton',
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {},
                  ),
                  FlatButton(
                    color: Colors.blue,
                    child: Text(
                      'DisabledFlatButton',
                    ),
                    onPressed: null,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  OutlineButton(
                    child: Text(
                      'FlatButton',
                      style: TextStyle(color: Colors.blue),
                    ),
                    onPressed: () {},
                  ),
                  FlatButton(
                    color: Colors.blue,
                    child: Text(
                      'DisabledFlatButton',
                    ),
                    onPressed: null,
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
