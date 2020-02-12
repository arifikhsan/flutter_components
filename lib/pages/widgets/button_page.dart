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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                RaisedButton(
                  color: Colors.blue,
                  onPressed: _showToast,
                  child: const Text(
                    'RaisedButton',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                RaisedButton(
                  color: Colors.blue,
                  onPressed: _showToast,
                  child: const Text(
                    'DisabledRaisedButton',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                FlatButton(
                  color: Colors.blue,
                  onPressed: _showToast,
                  child: const Text(
                    'FlatButton',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                FlatButton(
                  color: Colors.blue,
                  onPressed: _showToast,
                  child: const Text(
                    'DisabledFlatButton',
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                OutlineButton(
                  onPressed: _showToast,
                  child: const Text(
                    'FlatButton',
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
                FlatButton(
                  color: Colors.blue,
                  onPressed: _showToast,
                  child: const Text(
                    'DisabledFlatButton',
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
