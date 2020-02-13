import 'package:flutter/material.dart';
import 'package:flutter_components/pages/persistents/hive/contact.dart';
import 'package:flutter_components/router.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart' as path_provider;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final appDocumentDirectory =
      await path_provider.getApplicationDocumentsDirectory();

  Hive.init(appDocumentDirectory.path);
  Hive.registerAdapter(ContactAdapter());
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: routes,
    );
  }
}
