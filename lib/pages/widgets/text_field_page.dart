import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class TextFieldPage extends StatefulWidget {
  @override
  _TextFieldPageState createState() => _TextFieldPageState();
}

class _TextFieldPageState extends State<TextFieldPage> {
  bool numberInputIsValid = true;
  bool inputShowPassword = false;

  final multilineInputController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text field'),
      ),
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: Container(
          margin: const EdgeInsets.all(8.0),
          child: ListView(
            children: <Widget>[
              Text('Number input field'),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Enter an integer: ',
                  icon: Icon(Icons.attach_money),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                  errorText:
                      numberInputIsValid ? null : 'Please enter an integer',
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
              SizedBox(height: 50),
              Text('Multiline Input Field'),
              TextField(
                controller: multilineInputController,
                maxLines: 10,
                textCapitalization: TextCapitalization.sentences,
                decoration: InputDecoration(
                    counterText:
                        '${this.multilineInputController.text.split(' ').length}',
                    labelText: 'Enter multiline text',
                    hintText: 'type something ...',
                    border: OutlineInputBorder()),
                onChanged: (_) {
                  setState(() {});
                },
              ),
              SizedBox(height: 50),
              Text('Password input field'),
              TextField(
                obscureText: inputShowPassword,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.security),
                  suffixIcon: IconButton(
                    icon: Icon(
                      Icons.remove_red_eye,
                      color: inputShowPassword ? Colors.grey : Colors.blue,
                    ),
                    onPressed: () {
                      setState(() {
                        inputShowPassword = !inputShowPassword;
                      });
                    },
                  ),
                ),
              ),
              SizedBox(height: 50),
              Text('Borderless input'),
              TextField(
                maxLines: 3,
                decoration: InputDecoration.collapsed(
                  hintText: 'borderless input',
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
