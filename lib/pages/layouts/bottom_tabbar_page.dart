import 'package:flutter/material.dart';

class BottomTabbarPage extends StatefulWidget {
  @override
  _BottomTabbarPageState createState() => _BottomTabbarPageState();
}

class _BottomTabbarPageState extends State<BottomTabbarPage> {
  int selectedPage = 0;

  final List<Icon> widgetOptions = <Icon>[
    Icon(Icons.directions_boat),
    Icon(Icons.directions_car),
    Icon(Icons.directions_run),
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bottom Tabbar'),
      ),
      body: widgetOptions.elementAt(selectedPage),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedPage,
        selectedItemColor: Colors.red,
        onTap: (int index) {
          setState(() {
            selectedPage = index;
          });
        },
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            title: const Text('Boat'),
            icon: Icon(Icons.directions_boat),
          ),
          BottomNavigationBarItem(
            title: const Text('Car'),
            icon: Icon(Icons.directions_car),
          ),
          BottomNavigationBarItem(
            title: const Text('Run'),
            icon: Icon(Icons.directions_run),
          ),
        ],
      ),
    );
  }
}
