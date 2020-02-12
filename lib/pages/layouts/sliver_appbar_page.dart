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
          const SliverAppBar(
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
                    child: const Text('Hello'),
                  ),
                  Container(
                    margin: const EdgeInsets.all(16),
                    color: Colors.red,
                    width: 200,
                    height: 200,
                    child: const Text('Hello'),
                  ),
                  Container(
                    margin: const EdgeInsets.all(16),
                    color: Colors.red,
                    width: 200,
                    height: 200,
                    child: const Text('Hello'),
                  ),
                  Container(
                    margin: const EdgeInsets.all(16),
                    color: Colors.red,
                    width: 200,
                    height: 200,
                    child: const Text('Hello'),
                  ),
                  Container(
                    margin: const EdgeInsets.all(16),
                    color: Colors.red,
                    width: 200,
                    height: 200,
                    child: const Text('Hello'),
                  ),
                  Container(
                    margin: const EdgeInsets.all(16),
                    color: Colors.red,
                    width: 200,
                    height: 200,
                    child: const Text('Hello'),
                  ),
                  Container(
                    margin: const EdgeInsets.all(16),
                    color: Colors.red,
                    width: 200,
                    height: 200,
                    child: const Text('Hello'),
                  ),
                  Container(
                    margin: const EdgeInsets.all(16),
                    color: Colors.red,
                    width: 200,
                    height: 200,
                    child: const Text('Hello'),
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
                const Text('Pinned'),
                Switch(
                  value: pinned,
                  onChanged: (bool value) {
                    setState(() {
                      pinned = value;
                    });
                  },
                ),
              ],
            ),
            Row(
              children: <Widget>[
                const Text('Snap'),
                Switch(
                  value: snap,
                  onChanged: (bool value) {
                    setState(() {
                      snap = value;
                    });
                  },
                ),
              ],
            ),
            Row(
              children: <Widget>[
                const Text('Floating'),
                Switch(
                  value: floating,
                  onChanged: (bool value) {
                    setState(() {
                      floating = value;
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
