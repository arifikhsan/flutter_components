import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProviderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => _CounterState()),
      ],
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Provider'),
        ),
        body: Consumer<_CounterState>(
          builder: (context, counter, child) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  counter.counter.toString(),
                  style: TextStyle(
                    fontSize: 24,
                  ),
                ),
                SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    RaisedButton(
                      child: Text('+'),
                      onPressed: () {
                        counter.incrementCounter();
                      },
                    ),
                    SizedBox(width: 24),
                    RaisedButton(
                      child: Text('-'),
                      onPressed: () {
                        counter.decrementCounter();
                      },
                    ),
                  ],
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

class _CounterState extends ChangeNotifier {
  int _counter = 0;
  int get counter => _counter;

  void incrementCounter() {
    _counter++;
    notifyListeners();
  }

  void decrementCounter() {
    _counter--;
    notifyListeners();
  }
}
