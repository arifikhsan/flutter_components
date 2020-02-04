import 'package:flutter/material.dart';

class GridListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grid List'),
      ),
      body: Container(
        margin: EdgeInsets.all(8),
        child: GridView.count(
          scrollDirection: Axis.horizontal,
          crossAxisCount: 6,
          children: List.generate(100, (int index) {
            return Container(
              color: Colors.blue,
              margin: EdgeInsets.all(8),
              constraints: BoxConstraints.expand(),
              child: Center(
                child: Text(
                  '$index',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
