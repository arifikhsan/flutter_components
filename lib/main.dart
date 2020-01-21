import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List<String> components = <String>[
    'hello world',
    'button'
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: ListView.builder(
          itemCount: components.length,
          itemBuilder: (BuildContext context, int index) {
          return Container(
            child: ListTile(
              title: Text('data'),
            ),
          );
         },
        ),
      ),
    );
  }
}
