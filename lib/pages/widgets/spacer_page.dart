import 'package:flutter/material.dart';

class SpacerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('spacer'),
      ),
      body: Container(
        child: Row(
          children: <Widget>[
            Spacer(),
            Container(
              width: 100,
              height: 100,
              color: Colors.red,
            ),
            Spacer(
              flex: 2,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.green,
            ),
            Spacer(
              flex: 3,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.blue,
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
