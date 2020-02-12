import 'package:flutter/material.dart';

class TextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Simple Text'),
      ),
      body: Container(
        margin: const EdgeInsets.all(8),
        child: Text(
          'Pariatur commodo nulla ipsum duis duis voluptate nostrud culpa laborum sint. Officia sit laboris do excepteur exercitation elit quis laborum aliquip commodo officia irure enim anim. Excepteur dolore eu dolor officia. Ad cillum dolore aliqua anim do sit.',
          style: TextStyle(
            color: Colors.blueGrey,
            fontSize: 24,
            fontWeight: FontWeight.w300,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
