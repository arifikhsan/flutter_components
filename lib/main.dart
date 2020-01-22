import 'package:flutter/material.dart';
import 'package:flutter_components/home.dart';
import 'package:flutter_components/pages/button_page.dart';
import 'package:flutter_components/pages/hello_world_page.dart';
import 'package:flutter_components/pages/icon_button_page.dart';
import 'package:flutter_components/pages/icon_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
        '/hello_world': (context) => HelloWorldPage(),
        '/button': (context) => ButtonPage(),
        '/icon': (context) => IconPage(),
        '/icon_button': (context) => IconButtonPage(),
      },
    );
  }
}
