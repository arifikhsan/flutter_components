import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ButtonPage extends StatelessWidget {
  Future<bool> _showToast() {
    return Fluttertoast.showToast(msg: 'Hello there');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buttons'),
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
                    onPressed: _showToast,
                  ),
                  RaisedButton(
                    color: Colors.blue,
                    child: Text(
                      'DisabledRaisedButton',
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: _showToast,
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
                    onPressed: _showToast,
                  ),
                  FlatButton(
                    color: Colors.blue,
                    child: Text(
                      'DisabledFlatButton',
                    ),
                    onPressed: _showToast,
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
                    onPressed: _showToast,
                  ),
                  FlatButton(
                    color: Colors.blue,
                    child: const Text(
                      'DisabledFlatButton',
                    ),
                    onPressed: _showToast,
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
