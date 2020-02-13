import 'package:flutter/material.dart';
import 'package:flutter_components/pages/persistents/hive/contact.dart';
import 'package:hive/hive.dart';

class HivePage extends StatefulWidget {
  @override
  _HivePageState createState() => _HivePageState();
}

class _HivePageState extends State<HivePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hive Tutorial'),
      ),
      body: FutureBuilder(
        future: Hive.openBox('contacts'),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasError) {
              return Text(snapshot.error.toString());
            } else {
              return Column(
                children: <Widget>[
                  Expanded(
                    child: _buildListView(),
                  ),
                  NewContactForm(),
                ],
              );
            }
          } else {
            return CircularProgressIndicator();
          }
        },
      ),
    );
  }

  @override
  void dispose() {
    Hive.box('contacts').close();
    // Hive.close(); // closing all boxes
    super.dispose();
  }

  ListView _buildListView() {
    return ListView(
      children: <Widget>[
        ListTile(
          title: Text('Name'),
          subtitle: Text('Age'),
        ),
      ],
    );
  }
}

class NewContactForm extends StatefulWidget {
  @override
  _NewContactFormState createState() => _NewContactFormState();
}

class _NewContactFormState extends State<NewContactForm> {
  final _formKey = GlobalKey<FormState>();
  String _name;
  String _age;

  void addContact(Contact contact) {
    print('Name: ${contact.name}, Age: ${contact.age}');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
