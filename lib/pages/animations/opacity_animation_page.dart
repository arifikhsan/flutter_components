import 'package:flutter/material.dart';

class OpacityAnimationPage extends StatefulWidget {
  @override
  _OpacityAnimationPageState createState() => _OpacityAnimationPageState();
}

class _OpacityAnimationPageState extends State<OpacityAnimationPage> {
  double opacityOne = 1.0;
  double opacityTwo = 1.0;
  double opacityThree = 1.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hello World'),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              const Text('Click on colored squares'),
              GestureDetector(
                child: Opacity(
                  opacity: opacityOne,
                  child: Container(
                    width: 100,
                    height: 100,
                    color: Colors.blue,
                  ),
                ),
                onTap: () {
                  setState(() {
                    opacityOne = 1.0 - opacityOne;
                  });
                },
              ),
              GestureDetector(
                child: AnimatedOpacity(
                  duration: const Duration(seconds: 1),
                  opacity: opacityTwo,
                  child: Container(
                    width: 100,
                    height: 100,
                    color: Colors.red,
                  ),
                ),
                onTap: () {
                  setState(() {
                    opacityTwo = 1.0 - opacityTwo;
                  });
                },
              ),
              GestureDetector(
                child: AnimatedOpacity(
                  duration: const Duration(milliseconds: 500),
                  opacity: opacityThree,
                  child: Container(
                    width: 100,
                    height: 100,
                    color: Colors.green,
                  ),
                ),
                onTap: () {
                  setState(() {
                    opacityThree = 1.0 - opacityThree;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
