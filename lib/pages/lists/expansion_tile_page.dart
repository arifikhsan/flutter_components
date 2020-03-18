import 'package:flutter/material.dart';

class ExpansionTilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expansion Tile'),
      ),
      body: ListView(
        children: <Widget>[
          ExpansionTile(
            title: Text('Open me'),
            children: <Widget>[
              Text('me hidden'),
            ],
          ),
          ExpansionTile(
            title: Text('Long text with padding'),
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(16),
                child: Text(
                    'Ullamco quis veniam esse minim esse deserunt eiusmod fugiat mollit eu adipisicing. Dolore ipsum ex velit labore esse magna. Ipsum nisi anim amet aliquip non qui nostrud nostrud officia deserunt in aliquip do nisi. Aliqua voluptate aliqua do enim officia in. Mollit proident exercitation sit cupidatat ex nulla sunt qui aliqua quis. Non elit amet consequat in reprehenderit.'),
              ),
            ],
          ),
          ExpansionTile(
            title: Text('Me too'),
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  MaterialButton(
                    child: Text(
                      'Me is button',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    color: Colors.blue,
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(Icons.launch),
                    onPressed: () {},
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
