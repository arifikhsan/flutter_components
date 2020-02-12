import 'package:flutter/material.dart';

class ImagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Card(
              clipBehavior: Clip.hardEdge,
              margin: const EdgeInsets.all(16),
              elevation: 8,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(16),
                ),
              ),
              child: Image.asset('assets/images/vegetable.jpg'),
            ),
            Card(
              clipBehavior: Clip.hardEdge,
              margin: const EdgeInsets.all(16),
              elevation: 8,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(16),
                ),
              ),
              child: Image.asset('assets/images/apple.jpg'),
            ),
            Card(
              clipBehavior: Clip.hardEdge,
              margin: const EdgeInsets.all(16),
              elevation: 8,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(16),
                ),
              ),
              child: const FlutterLogo(
                size: 200,
              ),
            ),
            Card(
              clipBehavior: Clip.hardEdge,
              margin: const EdgeInsets.all(16),
              elevation: 8,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(16),
                ),
              ),
              child: Image.asset('assets/images/leaf.jpg'),
            ),
          ],
        ),
      ),
    );
  }
}
