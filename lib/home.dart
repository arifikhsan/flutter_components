import 'package:flutter/material.dart';
import 'package:flutter_components/component.dart';

class Home extends StatelessWidget {
  const Home({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Component> components = <Component>[
      Component(name: 'Hello World', slug: 'hello_world'),
      Component(name: 'Text', slug: 'text'),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: ListView.builder(
        itemCount: components.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            color: Colors.blue,
            child: ListTile(
              title: Text(
                'components[index].title',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                Navigator.pushNamed(context, '/hello_world');
              },
            ),
          );
        },
      ),
    );
  }
}
