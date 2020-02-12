import 'package:flutter/material.dart';

class WrapPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wrap'),
      ),
      body: Container(
        margin: const EdgeInsets.all(16),
        child: Wrap(
          spacing: 8,
          runSpacing: 2,
          children: <Widget>[
            Chip(
              backgroundColor: Colors.blue,
              elevation: 4,
              label: Text(
                'Food',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            Chip(
              backgroundColor: Colors.blue,
              elevation: 4,
              label: Text(
                'Food',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            Chip(
              backgroundColor: Colors.blue,
              elevation: 4,
              label: Text(
                'Food',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            Chip(
              backgroundColor: Colors.blue,
              elevation: 4,
              label: Text(
                'Food',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            Chip(
              backgroundColor: Colors.blue,
              elevation: 4,
              label: Text(
                'Food',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            Chip(
              backgroundColor: Colors.blue,
              elevation: 4,
              label: Text(
                'Food',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            Chip(
              backgroundColor: Colors.blue,
              elevation: 4,
              label: Text(
                'Food',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            Chip(
              backgroundColor: Colors.blue,
              elevation: 4,
              label: Text(
                'Food',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            Chip(
              backgroundColor: Colors.blue,
              elevation: 4,
              label: Text(
                'Food',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            Chip(
              backgroundColor: Colors.blue,
              elevation: 4,
              label: Text(
                'Food',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            Chip(
              backgroundColor: Colors.blue,
              elevation: 4,
              label: Text(
                'Food',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
