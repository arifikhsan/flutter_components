import 'package:flutter/material.dart';

class AnimatedCrossFadePage extends StatefulWidget {
  @override
  _AnimatedCrossFadePageState createState() => _AnimatedCrossFadePageState();
}

class _AnimatedCrossFadePageState extends State<AnimatedCrossFadePage> {
  final bool _first = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hello World'),
      ),
      body: const Center(
        child: Text('Animated Cross Fade'),
        // child: AnimatedCrossFade(
        //   duration: const Duration(seconds: 3),
        //   firstChild: const FlutterLogo(
        //       style: FlutterLogoStyle.horizontal, size: 100.0),
        //   secondChild:
        //       const FlutterLogo(style: FlutterLogoStyle.stacked, size: 100.0),
        //   crossFadeState:
        //       _first ? CrossFadeState.showFirst : CrossFadeState.showSecond,
        // ),
      ),
    );
  }
}
