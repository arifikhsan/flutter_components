import 'package:flutter/material.dart';

class SnackbarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Default Snackbar'),
      ),
      body: const Center(
        child: UselesslyNestedWidget(),
      ),
    );
  }
}

class UselesslyNestedWidget extends StatelessWidget {
  const UselesslyNestedWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: const Text('Click me'),
      onPressed: () => showDefaultsnackbar(context),
    );
  }

  void showDefaultsnackbar(BuildContext context) {
    Scaffold.of(context).showSnackBar(SnackBar(
      content: const Text('Hello from the default snackbar'),
      action: SnackBarAction(
        label: 'Click me',
        onPressed: () {},
      ),
    ));
  }
}
