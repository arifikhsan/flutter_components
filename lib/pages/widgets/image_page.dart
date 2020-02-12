import 'package:flutter/material.dart';

class ImagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image'),
      ),
      body: Column(
        children: <Widget>[
          Image.asset('assets/images/vegetable.jpg'),
          const FlutterLogo(
            size: 64,
          ),
        ],
      ),
    );
  }
}
