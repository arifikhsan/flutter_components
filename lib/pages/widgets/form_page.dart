import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FormPage extends StatefulWidget {
  @override
  _FormPageState createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  final _formKey = GlobalKey<FormState>();
  // TextEditingController nameController = TextEditingController();

  String name;
  String phoneNumber;
  String email;
  String lifeStory;
  String salary;
  String password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form'),
      ),
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Container(
          padding: const EdgeInsets.all(16),
          child: Form(
            key: _formKey,
            child: ListView(
              children: <Widget>[
                TextFormField(
                  initialValue: name,
                  validator: (value) {
                    return value.isEmpty ? 'Please enter some text' : null;
                  },
                  onChanged: (String value) {
                    name = value;
                  },
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    hintText: 'What do people call you?',
                    labelText: 'Name',
                    filled: true,
                    icon: Icon(Icons.person),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    filled: true,
                    icon: Icon(Icons.phone),
                    hintText: 'Where can we reach you?',
                    labelText: 'Phone Number',
                    prefixText: '+62',
                  ),
                  keyboardType: TextInputType.phone,
                  onChanged: (String value) {
                    phoneNumber = value;
                  },
                  inputFormatters: [WhitelistingTextInputFormatter.digitsOnly],
                ),
                SizedBox(
                  height: 16,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    filled: true,
                    icon: Icon(Icons.email),
                    hintText: 'Your email address',
                    labelText: 'Email',
                  ),
                  keyboardType: TextInputType.emailAddress,
                  onChanged: (String value) {
                    email = value;
                  },
                ),
                SizedBox(
                  height: 16,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    icon: Icon(Icons.phone),
                    hintText: 'Tell us about yourself',
                    helperText: 'Keep it short, this is just a demo',
                    labelText: 'Life story',
                  ),
                  maxLines: 3,
                  onChanged: (String value) {
                    lifeStory = value;
                  },
                ),
                SizedBox(
                  height: 16,
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Salary',
                    prefixText: '\$',
                    suffixText: 'USD',
                    suffixStyle: TextStyle(color: Colors.green),
                    prefixStyle: TextStyle(color: Colors.blue),
                  ),
                  maxLines: 1,
                  onChanged: (String value) {
                    salary = value;
                  },
                ),
                const SizedBox(
                  height: 16,
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(labelText: 'Password'),
                  validator: (String value) {
                    return value.trim().isEmpty ? 'Password is required' : null;
                  },
                  onChanged: (String value) {
                    password = value;
                  },
                ),
                Divider(),
                Text('Name: $name'),
                Text('Phone number: $phoneNumber'),
                Text('Email: $email'),
                Text('Life story: $lifeStory'),
                Text('Salary: $salary'),
                Text('Password: $password'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
