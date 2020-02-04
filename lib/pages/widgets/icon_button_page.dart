import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class IconButtonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    _showToast() {
      Fluttertoast.showToast(
          msg: 'Hello there', toastLength: Toast.LENGTH_SHORT);
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('IconButton'),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                IconButton(
                  iconSize: 64,
                  icon: Icon(
                    Icons.payment,
                    color: Colors.blue,
                  ),
                  onPressed: _showToast,
                ),
                IconButton(
                  iconSize: 64,
                  icon: Icon(
                    Icons.lock_outline,
                    color: Colors.orange,
                  ),
                  onPressed: _showToast,
                ),
                IconButton(
                  iconSize: 64,
                  icon: Icon(
                    Icons.looks,
                    color: Colors.green,
                  ),
                  onPressed: _showToast,
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                IconButton(
                  iconSize: 64,
                  icon: Icon(
                    Icons.payment,
                    color: Colors.blue,
                  ),
                  onPressed: _showToast,
                ),
                IconButton(
                  iconSize: 64,
                  icon: Icon(
                    Icons.lock_outline,
                    color: Colors.orange,
                  ),
                  onPressed: _showToast,
                ),
                IconButton(
                  iconSize: 64,
                  icon: Icon(
                    Icons.looks,
                    color: Colors.green,
                  ),
                  onPressed: _showToast,
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                IconButton(
                  iconSize: 64,
                  icon: Icon(
                    Icons.payment,
                    color: Colors.blue,
                  ),
                  onPressed: _showToast,
                ),
                IconButton(
                  iconSize: 64,
                  icon: Icon(
                    Icons.lock_outline,
                    color: Colors.orange,
                  ),
                  onPressed: _showToast,
                ),
                IconButton(
                  iconSize: 64,
                  icon: Icon(
                    Icons.looks,
                    color: Colors.green,
                  ),
                  onPressed: _showToast,
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                IconButton(
                  iconSize: 64,
                  icon: Icon(
                    Icons.payment,
                    color: Colors.blue,
                  ),
                  onPressed: _showToast,
                ),
                IconButton(
                  iconSize: 64,
                  icon: Icon(
                    Icons.lock_outline,
                    color: Colors.orange,
                  ),
                  onPressed: _showToast,
                ),
                IconButton(
                  iconSize: 64,
                  icon: Icon(
                    Icons.looks,
                    color: Colors.green,
                  ),
                  onPressed: _showToast,
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                IconButton(
                  iconSize: 64,
                  icon: Icon(
                    Icons.payment,
                    color: Colors.blue,
                  ),
                  onPressed: _showToast,
                ),
                IconButton(
                  iconSize: 64,
                  icon: Icon(
                    Icons.lock_outline,
                    color: Colors.orange,
                  ),
                  onPressed: _showToast,
                ),
                IconButton(
                  iconSize: 64,
                  icon: Icon(
                    Icons.looks,
                    color: Colors.green,
                  ),
                  onPressed: _showToast,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
