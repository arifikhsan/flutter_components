import 'package:flutter/material.dart';

class ClipPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Clip'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            margin: EdgeInsets.all(16),
            child: Column(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(24),
                  child: Container(
                    color: Colors.green,
                    width: 200,
                    height: 200,
                    child: FlutterLogo(),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                ClipOval(
                  child: Container(
                    color: Colors.green,
                    width: 200,
                    height: 200,
                    child: FlutterLogo(),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                ClipRect(
                  child: Container(
                    color: Colors.green,
                    width: 200,
                    height: 200,
                    child: FlutterLogo(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
