import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class IconButtonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    _showToast() {
      Fluttertoast.showToast(msg: 'Hello there', toastLength: Toast.LENGTH_SHORT);
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('IconButton'),
      ),
      body: Container(
        child: Row(
          children: <Widget>[
            IconButton(
              iconSize: 64,
              icon: Icon(
                Icons.payment,
                color: Colors.blue,
              ),
              onPressed: _showToast,
            ),
          ],
        ),
      ),
    );
  }
}
