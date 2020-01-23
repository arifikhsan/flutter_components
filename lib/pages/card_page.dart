import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              margin: EdgeInsets.all(16),
              child: Card(
                color: Colors.red,
                elevation: 8,
                child: Container(
                  padding: EdgeInsets.all(16),
                  child: Text(
                    'Card Hello World',
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(16),
              width: double.infinity,
              child: Card(
                color: Colors.orange,
                child: InkWell(
                  splashColor: Colors.green,
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.all(16),
                    child: Text(
                      'Ripple Card',
                      style: TextStyle(color: Colors.white),
                      textAlign: TextAlign.right,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.all(16),
              child: Card(
                color: Colors.purple,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(16),
                        bottomRight: Radius.circular(16),
                        topRight: Radius.elliptical(80, 80))),
                child: Container(
                  padding: EdgeInsets.all(16),
                  child: Text(
                    'Rounded Card',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.all(16),
              child: Card(
                color: Colors.purple,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.elliptical(80, 40))),
                child: Container(
                  padding: EdgeInsets.all(16),
                  child: Text(
                    'Elliptical Card',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.all(16),
              child: Card(
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 180,
                      child: Stack(
                        children: <Widget>[
                          Positioned.fill(
                            child: Card(
                              color: Colors.indigo,
                            ),
                          ),
                          Positioned(
                            bottom: 16,
                            left: 16,
                            right: 16,
                            child: FittedBox(
                              fit: BoxFit.scaleDown,
                              alignment: Alignment.centerLeft,
                              child: Text('Complex Card',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 24,
                                  )),
                            ),
                          ),
                        ],
                      ),
                    ),
                    ButtonBar(
                      children: <Widget>[
                        FlatButton(
                          child: Text('SHARE'),
                          onPressed: () {},
                        ),
                        FlatButton(
                          child: Text('EXPLORE'),
                          onPressed: () {},
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(16),
              child: Card(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const ListTile(
                      leading: Icon(Icons.album),
                      title: Text('The Enchanted Nightingale'),
                      subtitle:
                          Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
                    ),
                    ButtonBar(
                      children: <Widget>[
                        FlatButton(
                          child: const Text('BUY TICKETS'),
                          onPressed: () {},
                        ),
                        FlatButton(
                          child: const Text('LISTEN'),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
