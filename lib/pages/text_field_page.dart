import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class TextFieldPage extends StatefulWidget {
  @override
  _TextFieldPageState createState() => _TextFieldPageState();
}

class _TextFieldPageState extends State<TextFieldPage> {
  bool numberInputIsValid = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text field'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('Number'),
            subtitle: Text('input field'),
          ),
          TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              labelText: 'Enter an integer: ',
              icon: Icon(Icons.attach_money),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(8)),
              ),
              errorText: numberInputIsValid ? null : 'Please enter an integer',
            ),
            onSubmitted: (String value) {
              Fluttertoast.showToast(msg: 'You entered: $value');
            },
            onChanged: (String value) {
              final valueInteger = int.tryParse(value);
              debugPrint('parsed value: $valueInteger');
              setState(() {
                if (valueInteger == null) {
                  numberInputIsValid = false;
                } else {
                  numberInputIsValid = true;
                }
              });
            },
          ),
          ListTile(
            title: Text('Number'),
            subtitle: Text('input field'),
          ),
          ListTile(
            title: Text('Number'),
            subtitle: Text('input field'),
          ),
        ],
      ),
    );
  }
}
