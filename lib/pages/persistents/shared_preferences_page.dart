import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesPage extends StatefulWidget {
  @override
  _SharedPreferencesPageState createState() => _SharedPreferencesPageState();
}

class _SharedPreferencesPageState extends State<SharedPreferencesPage> {
  SharedPreferences sharedPreferences;
  final String counterKey = 'counter';
  final String toggleKey = 'toggle';
  int counter;
  bool toggle;

  @override
  void initState() {
    super.initState();
    SharedPreferences.getInstance()
      ..then((SharedPreferences onValue) {
        setState(() {
          sharedPreferences = onValue;
          counter = sharedPreferences.getInt(counterKey) ?? 0;
          toggle = sharedPreferences.getBool(toggleKey) ?? false;
        });
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shared Preferences'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('$counter'),
            const SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                RaisedButton(
                  child: const Text('+'),
                  onPressed: () async {
                    await sharedPreferences.setInt(counterKey, counter + 1);
                    setState(() {
                      counter = sharedPreferences.getInt(counterKey);
                    });
                  },
                ),
                RaisedButton(
                  child: const Text('-'),
                  onPressed: () async {
                    await sharedPreferences.setInt(counterKey, counter - 1);
                    setState(() {
                      counter = sharedPreferences.getInt(counterKey);
                    });
                  },
                ),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text('$toggle'),
                const SizedBox(
                  height: 16,
                ),
                RaisedButton(
                  child: const Text('Toggle'),
                  onPressed: () async {
                    await sharedPreferences.setBool(toggleKey, !toggle);
                    setState(() {
                      toggle = sharedPreferences.getBool(toggleKey);
                    });
                  },
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
