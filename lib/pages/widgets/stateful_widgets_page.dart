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
        title: const Text('Sateful widgets'),
      ),
      body: ListView(
        children: <Widget>[
          const Text('switch'),
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
          const SizedBox(
            height: 20,
          ),
          const Text('disabled switch'),
          const Center(
            child: Switch(
              value: false,
              onChanged: null,
            ),
          ),
          const Divider(),
          const Text('checkbox'),
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
          const SizedBox(
            height: 20,
          ),
          const Text('disabled checkbox'),
          const Center(
            child: Checkbox(
              tristate: true,
              value: null,
              onChanged: null,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text('slider'),
          Slider(
            value: sliderValueTop,
            onChanged: (double value) {
              setState(() {
                sliderValueTop = value;
              });
            },
          ),
          const SizedBox(
            height: 20,
          ),
          const Text('slider with division and label'),
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
          const SizedBox(
            height: 20,
          ),
          const Text('linear progress indicator'),
          const LinearProgressIndicator(),
          const Divider(),
          const Center(
            child: CircularProgressIndicator(),
          ),
          const Divider(),
          const Text('radio'),
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
