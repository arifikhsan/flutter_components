import 'package:flushbar/flushbar.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';

class FlushbarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flushbar Snackbar'),
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
    return Column(
      children: <Widget>[
        RaisedButton(
          child: const Text('Show Default'),
          onPressed: () => showDefaultsnackbar(context),
        ),
        RaisedButton(
          child: const Text('Show Simple Flushbar'),
          onPressed: () => showSimpleFlushbar(context),
        ),
        RaisedButton(
          child: const Text('Show Info Flushbar'),
          onPressed: () => showInfoFlushbar(context),
        ),
        RaisedButton(
          child: const Text('Show Flushbar via Helper'),
          onPressed: () => showInfoFlushbarHelper(context),
        ),
        RaisedButton(
          child: const Text('Show Floating Styled Flushbar'),
          onPressed: () => showFloatingFlushbar(context),
        ),
      ],
    );
  }

  void showDefaultsnackbar(BuildContext context) {
    Scaffold.of(context).showSnackBar(
      SnackBar(
        content: const Text('Hello from the default snackbar'),
        action: SnackBarAction(
          label: 'Click me',
          onPressed: () {},
        ),
      ),
    );
  }

  void showSimpleFlushbar(BuildContext context) {
    Flushbar(
      message: 'Hello from a Flushbar',
      duration: const Duration(seconds: 3),
      mainButton: FlatButton(
        child: Text(
          'Click Me',
          style: TextStyle(
            color: Theme.of(context).accentColor,
          ),
        ),
        onPressed: () {},
      ),
    )..show(context);
  }

  void showInfoFlushbar(BuildContext context) {
    Flushbar(
      title: 'This action is prohibited',
      message: 'Lorem ipsum dolor sit amet',
      leftBarIndicatorColor: Colors.blue.shade300,
      duration: const Duration(seconds: 3),
      icon: Icon(
        Icons.info_outline,
        size: 28,
        color: Colors.blue.shade300,
      ),
    )..show(context);
  }

  void showInfoFlushbarHelper(BuildContext context) {
    FlushbarHelper.createInformation(
      title: 'This action is prohibited',
      message: 'Lorem ipsum dolor sit amet',
    ).show(context);
  }

  void showFloatingFlushbar(BuildContext context) {
    Flushbar(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      borderRadius: 8,
      backgroundGradient: LinearGradient(
        colors: <Color>[
          Colors.green.shade800,
          Colors.greenAccent.shade700,
        ],
        stops: [
          0.6,
          1,
        ],
      ),
      boxShadows: [
        BoxShadow(
          color: Colors.black45,
          offset: const Offset(3, 3),
          blurRadius: 3,
        ),
      ],
      dismissDirection: FlushbarDismissDirection.HORIZONTAL,
      forwardAnimationCurve: Curves.fastLinearToSlowEaseIn,
      title: 'This is a floating Flushbar',
      message: 'Lorem ipsum color sit amet',
      duration: const Duration(seconds: 4),
    )..show(context);
  }
}
