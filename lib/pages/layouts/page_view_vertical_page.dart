import 'package:flutter/material.dart';

class PageViewVerticalPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page View Vertical'),
      ),
      body: PageView(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Card(
            margin: const EdgeInsets.all(16),
            color: Colors.blue,
            child: Align(
              child: Text(
                'Card 1',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
          ),
          Card(
            margin: const EdgeInsets.all(16),
            color: Colors.red,
            child: Align(
              child: Text(
                'Card 2',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
          ),
          Card(
            margin: const EdgeInsets.all(16),
            color: Colors.green,
            child: Align(
              child: Text(
                'Card 3',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
