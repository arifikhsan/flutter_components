import 'package:flutter/material.dart';
import 'package:flutter_components/button.dart';
import 'package:flutter_components/hello_world.dart';
import 'package:flutter_components/home.dart';
import 'package:flutter_components/icon.dart';

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
        '/button': (context) => Button(),
        '/icon': (context) => IconPage()
      },
    );
  }
}
