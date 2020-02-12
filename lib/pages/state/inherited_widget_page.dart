import 'package:flutter/material.dart';

class InheritedWidgetPage extends StatefulWidget {
  @override
  _InheritedWidgetPageState createState() => _InheritedWidgetPageState();
}

class _InheritedWidgetPageState extends State<InheritedWidgetPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inherited widget'),
      ),
      body: const Center(
        child: Text('Inherited widget'),
      ),
    );
  }
}
