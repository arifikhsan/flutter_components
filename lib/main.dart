import 'package:flutter/material.dart';
import 'package:flutter_components/pages/button_page.dart';
import 'package:flutter_components/pages/card_page.dart';
import 'package:flutter_components/pages/hello_world_page.dart';
import 'package:flutter_components/pages/home_page.dart';
import 'package:flutter_components/pages/icon_button_page.dart';
import 'package:flutter_components/pages/icon_page.dart';
import 'package:flutter_components/pages/text_page.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.red,
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/hello_world': (context) => HelloWorldPage(),
        '/button': (context) => ButtonPage(),
        '/icon': (context) => IconPage(),
        '/icon_button': (context) => IconButtonPage(),
        '/text': (context) => TextPage(),
        '/card': (context) => CardPage(),
      },
    );
  }
}
