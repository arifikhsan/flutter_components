import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';

class DialogPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dialog'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            RaisedButton(
              color: Colors.blue,
              child: const Text(
                'Regert',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                _showSimpleDialog(context);
              },
            ),
            RaisedButton(
              color: Colors.blue,
              child: const Text(
                'Sample Dialog',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                _showSimpleReturnValueDialog(context);
              },
            ),
            RaisedButton(
              color: Colors.blue,
              child: const Text(
                'Bottom Sheet Dialog',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                _showBottomSheetDialog(context);
              },
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _showSimpleDialog(BuildContext context) {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Rewind and remember'),
          content: SingleChildScrollView(
            child: ListBody(
              children: const <Widget>[
                Text('You will never be satisfied'),
                Text('You\'re like me. I\'m never satisfied.')
              ],
            ),
          ),
          actions: <Widget>[
            FlatButton(
              child: const Text('Regret'),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ],
        );
      },
    );
  }

  Future<void> _showSimpleReturnValueDialog(BuildContext context) {
    return showDialog<String>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Dialog Title'),
          content: const Text('Sample Alert Content'),
          actions: <Widget>[
            FlatButton(
              child: const Text('Cancel'),
              onPressed: () => Navigator.pop(context, 'Cancel'),
            ),
            FlatButton(
              child: const Text('OK'),
              onPressed: () => Navigator.pop(context, 'Ok'),
            ),
          ],
        );
      },
    ).then((String onValue) {
      FlushbarHelper.createSuccess(message: onValue).show(context);
    });
  }

  void _showBottomSheetDialog(BuildContext context) {
    showBottomSheet<dynamic>(
      context: context,
      builder: (BuildContext context) {
        return Container(
          child: ListView(
            shrinkWrap: true,
            primary: false,
            children: <Widget>[
              const ListTile(
                title: Text('This is a Bottom Sheet'),
              ),
              const ListTile(
                title: Text('Click OK to dismiss'),
              ),
              ButtonBar(
                children: <Widget>[
                  FlatButton(
                    child: const Text('OK'),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  )
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
