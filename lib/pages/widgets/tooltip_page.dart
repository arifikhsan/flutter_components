import 'package:flutter/material.dart';

class TooltipPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tooltip'),
      ),
      body: Container(
        margin: const EdgeInsets.all(8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Tooltip(
              message: 'Default tooltip',
              child: Container(
                margin: const EdgeInsets.all(8),
                color: Colors.blue,
                width: 100,
                height: 100,
                child: Center(
                  child: Text(
                    'Long press on me',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            Tooltip(
              message: 'Default tooltip',
              verticalOffset: 50,
              child: Container(
                margin: const EdgeInsets.all(8),
                color: Colors.green,
                width: 100,
                height: 100,
                child: Center(
                  child: Text(
                    'Long press on me',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            Tooltip(
              message: 'Default tooltip',
              height: 50,
              verticalOffset: 50,
              child: Container(
                margin: const EdgeInsets.all(8),
                color: Colors.red,
                width: 100,
                height: 100,
                child: Center(
                  child: Text(
                    'Long press on me',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
