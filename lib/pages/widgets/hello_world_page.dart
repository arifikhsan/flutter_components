import 'package:flutter/material.dart';

class HelloWorldPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hello World'),
      ),
      body: Center(
        child: Container(
          child: const Text('Hello World'),
        ),
      ),
    );
  }
}
