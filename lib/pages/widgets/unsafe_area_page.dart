import 'package:flutter/material.dart';

class UnsafeAreaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text(
        'This text will be behind the notch',
        style: TextStyle(
          fontSize: 24,
          color: Colors.blue,
        ),
      ),
    );
  }
}
