import 'package:flutter/material.dart';

class ChipPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chip'),
      ),
      body: Center(
        child: Container(
          child: Chip(
            avatar: CircleAvatar(
              child: Text('H'),
            ),
            backgroundColor: Colors.blue,
            elevation: 4,
            shadowColor: Colors.green,
            labelStyle: TextStyle(color: Colors.white),
            label: Text('Health'),
          ),
        ),
      ),
    );
  }
}
