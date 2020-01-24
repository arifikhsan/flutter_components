import 'package:flutter/material.dart';

class DropdownButtonPage extends StatefulWidget {
  @override
  _DropdownButtonPageState createState() => _DropdownButtonPageState();
}

class _DropdownButtonPageState extends State<DropdownButtonPage> {
  final menuItems = ['one', 'two', 'three', 'four'];
  String dropdownOneSelectedValue = 'one';
  String dropdownTwoSelectedValue = 'two';
  String dropdownThreeSelectedValue;
  String dropdownFourSelectedValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dropdown Button'),
      ),
      body: Column(
        children: <Widget>[
          Column(
            children: <Widget>[
              ListTile(
                title: Text('Dropdown'),
                subtitle: Text('With default value'),
                trailing: DropdownButton(
                  value: dropdownOneSelectedValue,
                  items: menuItems.map((String item) {
                    return DropdownMenuItem(
                      value: item,
                      child: Text(item),
                    );
                  }).toList(),
                  onChanged: (String newValue) {
                    setState(() {
                      dropdownOneSelectedValue = newValue;
                    });
                  },
                ),
              ),
              ListTile(
                title: Text('Dropdown'),
                subtitle: Text('with icon'),
                trailing: DropdownButton(
                  value: dropdownTwoSelectedValue,
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
                      dropdownTwoSelectedValue = newValue;
                    });
                  },
                ),
              ),
              ListTile(
                title: Text('Dropdown'),
                subtitle: Text('with hint'),
                trailing: DropdownButton(
                  value: dropdownThreeSelectedValue,
                  hint: Text('choose'),
                  items: menuItems.map((String value) {
                    return DropdownMenuItem(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (String newValue) {
                    setState(() {
                      dropdownThreeSelectedValue = newValue;
                    });
                  },
                ),
              ),
              ListTile(
                title: Text('Pop up menu button'),
                subtitle: Text('subtitle'),
                trailing: PopupMenuButton(
                  itemBuilder: (_) => menuItems.map((String value) {
                    return PopupMenuItem(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onSelected: (String newValue) {
                    setState(() {
                      dropdownFourSelectedValue = newValue;
                    });
                  },
                ),
              )
            ],
          ),
          Column(
            children: <Widget>[
              Text("value of dropdown one: $dropdownOneSelectedValue"),
              Text("value of dropdown two: $dropdownTwoSelectedValue"),
              Text("value of dropdown three: $dropdownThreeSelectedValue"),
              Text("value of dropdown four: $dropdownFourSelectedValue"),
            ],
          )
        ],
      ),
    );
  }
}
