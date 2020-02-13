import 'package:flutter/material.dart';
import 'package:flutter_components/pages/persistents/hive/contact.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

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
        future: Hive.openBox(
          'contacts',
          compactionStrategy: (int total, int deleted) {
            return deleted > 20;
          },
        ),
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
            return Text('data');
          }
        },
      ),
    );
  }

  @override
  void dispose() {
    Hive.box('contacts').compact();
    Hive.box('contacts').close();
    // Hive.close(); // closing all boxes
    super.dispose();
  }

  Widget _buildListView() {
    return ValueListenableBuilder(
      valueListenable: Hive.box('contacts').listenable(),
      builder: (context, Box<dynamic> contactsBox, _) {
        return ListView.builder(
          itemCount: contactsBox.length,
          itemBuilder: (context, index) {
            final contact = contactsBox.getAt(index) as Contact;
            return ListTile(
              title: Text(contact.name),
              subtitle: Text(contact.age.toString()),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.refresh),
                    onPressed: () {
                      contactsBox.putAt(
                        index,
                        Contact('${contact.name}*', contact.age + 1),
                      );
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: () {
                      contactsBox.deleteAt(index);
                    },
                  ),
                ],
              ),
            );
          },
        );
      },
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
    final contactsBox = Hive.box('contacts');
    contactsBox.add(contact);
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
                    decoration: InputDecoration(labelText: 'Name'),
                    onSaved: (value) => _name = value,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(labelText: 'Age'),
                    keyboardType: TextInputType.number,
                    onSaved: (value) => _age = value,
                  ),
                ),
              ],
            ),
            RaisedButton(
              child: Text('Add new contact'),
              onPressed: () {
                _formKey.currentState.save();
                final newContact = Contact(_name, int.parse(_age));
                addContact(newContact);
              },
            ),
          ],
        ),
      ),
    );
  }
}
