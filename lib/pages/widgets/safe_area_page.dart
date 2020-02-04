import 'package:flutter/material.dart';

class SafeAreaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Text(
          'This text will be below the notch',
          style: TextStyle(
            fontSize: 24,
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}
