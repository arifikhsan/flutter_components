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
          onPressed: () {
            Fluttertoast.showToast(msg: 'Hello train');
          },
        ),
        title: Text('Appbar'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.directions_bike),
            onPressed: () {
              Fluttertoast.showToast(msg: 'Hello bike');
            },
          ),
          IconButton(
            icon: Icon(Icons.business),
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
      body: Center(
        child: Container(
          child: Text('Appbar'),
        ),
      ),
    );
  }
}
