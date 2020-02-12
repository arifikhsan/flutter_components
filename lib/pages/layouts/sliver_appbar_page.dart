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
            pinned: pinned,
            snap: snap,
            floating: floating,
            expandedHeight: 150,
            flexibleSpace: const FlexibleSpaceBar(
              title: Text(
                'Flexible space title',
              ),
            ),
          ),
          SliverFillRemaining(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('pinned: $pinned'),
                  Text('snap: $snap'),
                  Text('floating: $floating'),
                ],
              ),
            ),
          ),
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
