import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class AppbarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        leading: IconButton(
          icon: Icon(Icons.train),
          tooltip: 'Train',
          onPressed: () {
            Fluttertoast.showToast(msg: 'Hello train');
          },
        ),
        title: const Text('Appbar'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.directions_bike),
            tooltip: 'Bike',
            onPressed: () {
              Fluttertoast.showToast(msg: 'Hello bike');
            },
          ),
          IconButton(
            icon: Icon(Icons.business),
            tooltip: 'Business',
            onPressed: () {
              Fluttertoast.showToast(msg: 'Hello business');
            },
          ),
          PopupMenuButton(onSelected: (String value) {
            Fluttertoast.showToast(msg: 'Hello $value');
          }, itemBuilder: (BuildContext context) {
            return [
              PopupMenuItem(
                value: 'boat',
                child: Text('Boat'),
              ),
              PopupMenuItem(
                value: 'cargo',
                child: Text('Cargo'),
              ),
            ];
          })
        ],
      ),
      body: const Center(
        child: Text('Appbar'),
      ),
    );
  }
}
