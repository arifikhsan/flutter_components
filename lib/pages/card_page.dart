import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card'),
      ),
      body: Container(
        margin: EdgeInsets.all(16),
        child: Card(
          color: Colors.red,
          child: Container(
            padding: EdgeInsets.all(16),
            child: Text(
              'Card Hello World',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
