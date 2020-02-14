import 'package:flutter/material.dart';

class BottomSheetPage extends StatelessWidget {
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: const Text('Bottom Sheet'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            RaisedButton(
              child: Text(
                'Show Bottom Sheet',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              color: Colors.blue,
              onPressed: () {
                _scaffoldKey.currentState.showBottomSheet(
                  (ctx) => _buildBottomSheet(ctx),
                );
                // showBottomSheet(context: context, builder: null);
              },
            ),
            RaisedButton(
              child: Text(
                'Show Modal Bottom Sheet',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              color: Colors.blue,
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  builder: (builder) {
                    return _buildBottomSheet(context);
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBottomSheet(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      height: 300,
      child: ListView(
        children: <Widget>[
          ListTile(
            title: Text('Bottom sheet'),
          ),
          TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              icon: Icon(Icons.attach_money),
            ),
          ),
          SizedBox(height: 20),
          Container(
            alignment: Alignment.center,
            child: RaisedButton.icon(
              color: Colors.blue,
              icon: Icon(Icons.save),
              label: Text('data'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
        ],
      ),
    );
  }
}
