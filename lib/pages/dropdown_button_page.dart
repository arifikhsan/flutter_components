import 'package:flutter/material.dart';

class DropdownButtonPage extends StatefulWidget {
  @override
  _DropdownButtonPageState createState() => _DropdownButtonPageState();
}

class _DropdownButtonPageState extends State<DropdownButtonPage> {
  final menuItems = ['one', 'two', 'three', 'four'];
  String selectedValue = 'one';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dropdown Button'),
      ),
      body: Column(
        children: <Widget>[
          ListTile(
            title: Text('Default value'),
            trailing: DropdownButton(
              value: selectedValue,
              items: menuItems.map((String item) {
                return DropdownMenuItem(
                  value: item,
                  child: Text(item),
                );
              }).toList(),
              onChanged: (String newValue) {
                setState(() {
                  selectedValue = newValue;
                });
              },
            ),
          ),
          ListTile(
            title: Text('DropdownButton with icon'),
            trailing: DropdownButton(
              value: selectedValue,
              items: menuItems.map((String item) {
                return DropdownMenuItem(
                  value: item,
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.home,
                        color: Colors.blue,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(item),
                    ],
                  ),
                );
              }).toList(),
              onChanged: (String newValue) {
                setState(() {
                  selectedValue = newValue;
                });
              },
            ),
          ),
          Text(selectedValue)
        ],
      ),
    );
  }
}
