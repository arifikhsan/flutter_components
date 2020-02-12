import 'package:flutter/material.dart';

class SliverAppbarPage extends StatefulWidget {
  @override
  _SliverAppbarPageState createState() => _SliverAppbarPageState();
}

class _SliverAppbarPageState extends State<SliverAppbarPage> {
  bool pinned = true;
  bool snap = false;
  bool floating = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 150,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                'Flexible space title',
              ),
            ),
          ),
          // SliverFillRemaining(
          //   child: Center(
          //     child: Text('hello'),
          //   ),
          // ),
          SliverFixedExtentList(
              delegate: SliverChildListDelegate(
                [
                  Container(
                    margin: const EdgeInsets.all(16),
                    color: Colors.red,
                    width: 200,
                    height: 200,
                    child: Text('Hello'),
                  ),
                  Container(
                    margin: const EdgeInsets.all(16),
                    color: Colors.red,
                    width: 200,
                    height: 200,
                    child: Text('Hello'),
                  ),
                  Container(
                    margin: const EdgeInsets.all(16),
                    color: Colors.red,
                    width: 200,
                    height: 200,
                    child: Text('Hello'),
                  ),
                  Container(
                    margin: const EdgeInsets.all(16),
                    color: Colors.red,
                    width: 200,
                    height: 200,
                    child: Text('Hello'),
                  ),
                  Container(
                    margin: const EdgeInsets.all(16),
                    color: Colors.red,
                    width: 200,
                    height: 200,
                    child: Text('Hello'),
                  ),
                  Container(
                    margin: const EdgeInsets.all(16),
                    color: Colors.red,
                    width: 200,
                    height: 200,
                    child: Text('Hello'),
                  ),
                  Container(
                    margin: const EdgeInsets.all(16),
                    color: Colors.red,
                    width: 200,
                    height: 200,
                    child: Text('Hello'),
                  ),
                  Container(
                    margin: const EdgeInsets.all(16),
                    color: Colors.red,
                    width: 200,
                    height: 200,
                    child: Text('Hello'),
                  ),
                ],
              ),
              itemExtent: 100)
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Row(
              children: <Widget>[
                Text('Pinned'),
                Switch(
                  value: this.pinned,
                  onChanged: (bool value) {
                    setState(() {
                      this.pinned = value;
                    });
                  },
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Text('Snap'),
                Switch(
                  value: this.snap,
                  onChanged: (bool value) {
                    setState(() {
                      this.snap = value;
                    });
                  },
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Text('Floating'),
                Switch(
                  value: this.floating,
                  onChanged: (bool value) {
                    setState(() {
                      this.floating = value;
                    });
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
