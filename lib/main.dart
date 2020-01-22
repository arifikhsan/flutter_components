import 'package:flutter/material.dart';
import 'package:flutter_components/component.dart';
import 'package:flutter_components/hello_world.dart';
import 'package:flutter_components/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
        '/hello_world': (context) => HelloWorld(),
      },
    );
  }
}
