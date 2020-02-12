import 'package:flutter/material.dart';

class PageViewHorizontalPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page View Horizontal'),
      ),
      body: PageView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            child: Card(
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
          ),
          Container(
            child: Card(
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
          ),
          Container(
            child: Card(
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
          ),
        ],
      ),
    );
  }
}
