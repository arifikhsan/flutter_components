import 'package:flutter/material.dart';

class AlignPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Align'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(16),
              color: Colors.blue,
              width: MediaQuery.of(context).size.width,
              height: 300,
              child: Align(
                child: Text(
                  'No Align or Default',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(16),
              color: Colors.blue,
              width: MediaQuery.of(context).size.width,
              height: 300,
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Top Left',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(16),
              color: Colors.blue,
              width: MediaQuery.of(context).size.width,
              height: 300,
              child: Align(
                alignment: Alignment.topCenter,
                child: Text(
                  'Top Center',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(16),
              color: Colors.blue,
              width: MediaQuery.of(context).size.width,
              height: 300,
              child: Align(
                alignment: Alignment.topRight,
                child: Text(
                  'Top Right',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(16),
              color: Colors.blue,
              width: MediaQuery.of(context).size.width,
              height: 300,
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'Center Right',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(16),
              color: Colors.blue,
              width: MediaQuery.of(context).size.width,
              height: 300,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Center Left',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(16),
              color: Colors.blue,
              width: MediaQuery.of(context).size.width,
              height: 300,
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  'Center',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(16),
              color: Colors.blue,
              width: MediaQuery.of(context).size.width,
              height: 300,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Text(
                  'Bottom Center',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(16),
              color: Colors.blue,
              width: MediaQuery.of(context).size.width,
              height: 300,
              child: Align(
                alignment: Alignment.bottomRight,
                child: Text(
                  'Bottom Right',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(16),
              color: Colors.blue,
              width: MediaQuery.of(context).size.width,
              height: 300,
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Bottom Left',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
