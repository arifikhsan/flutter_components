import 'package:flutter/material.dart';
import 'package:flutter_components/router.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.red,
      initialRoute: '/',
      routes: routes,
    );
  }
}
