import 'package:flutter/material.dart';

class StatefulWidgetsPage extends StatefulWidget {
  @override
  _StatefulWidgetsPageState createState() => _StatefulWidgetsPageState();
}

class _StatefulWidgetsPageState extends State<StatefulWidgetsPage> {
  bool switchValue = true;
  bool checkboxValue = true;
  double sliderValueTop = 0.5;
  double sliderValueBottom = 50.0;
  int radioValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sateful widgets'),
      ),
      body: ListView(
        children: <Widget>[
          Text('switch'),
          Center(
            child: Switch(
              value: switchValue,
              onChanged: (bool value) {
                setState(() {
                  switchValue = value;
                });
              },
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text('disabled switch'),
          Center(
            child: Switch(
              value: false,
              onChanged: null,
            ),
          ),
          Divider(),
          Text('checkbox'),
          Center(
            child: Checkbox(
              value: checkboxValue,
              onChanged: (bool value) {
                setState(() {
                  checkboxValue = value;
                });
              },
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text('disabled checkbox'),
          Center(
            child: Checkbox(
              tristate: true,
              value: null,
              onChanged: null,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text('slider'),
          Slider(
            value: sliderValueTop,
            onChanged: (double value) {
              setState(() {
                sliderValueTop = value;
              });
            },
          ),
          SizedBox(
            height: 20,
          ),
          Text('slider with division and label'),
          Slider(
            value: sliderValueBottom,
            min: 0.0,
            max: 100.0,
            divisions: 5,
            label: '${sliderValueBottom.round()}',
            onChanged: (double value) {
              setState(() {
                sliderValueBottom = value;
              });
            },
          ),
          SizedBox(
            height: 20,
          ),
          Text('linear progress indicator'),
          LinearProgressIndicator(),
          Divider(),
          Center(child: CircularProgressIndicator()),
          Divider(),
          Text('radio'),
          Row(
            children: [0, 1, 2, 3, 4].map((int index) {
              return Radio(
                value: index,
                groupValue: radioValue,
                onChanged: (int value) {
                  setState(() {
                    radioValue = value;
                  });
                },
              );
            }).toList(),
          ),
          Center(
            child: Column(
              children: <Widget>[
                Text('switch: $sliderValueTop'),
                Text('checkbox: $sliderValueTop'),
                Text('slider top: $sliderValueTop'),
                Text('slider bottom: $sliderValueBottom'),
                Text('radio: $radioValue'),
              ],
            ),
          )
        ],
      ),
    );
  }
}
