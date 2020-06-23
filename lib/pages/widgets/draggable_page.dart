import 'package:flutter/material.dart';

class DraggablePage extends StatefulWidget {
  @override
  _DraggablePageState createState() => _DraggablePageState();
}

class _DraggablePageState extends State<DraggablePage>
    with TickerProviderStateMixin {
  GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: const Text('Draggable'),
      ),
      body: Column(
        children: <Widget>[
          Draggable(
            data: 5,
            child: Container(
              width: 100.0,
              height: 100.0,
              color: Colors.pink,
              child: Center(
                child: Text(
                  "5",
                  style: TextStyle(color: Colors.white, fontSize: 22.0),
                ),
              ),
            ),
            feedback: Container(
              width: 100.0,
              height: 100.0,
              color: Colors.pink,
              child: Center(
                child: Text(
                  "5 aaa",
                  style: TextStyle(color: Colors.white, fontSize: 22.0),
                ),
              ),
            ),
          ),
          Row(
            children: <Widget>[
              Container(
                width: 100.0,
                height: 100.0,
                color: Colors.green,
                child: DragTarget(
                  builder: (context, List<int> candidateData, rejectedData) {
                    return Center(
                      child: Text(
                        "Even",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22.0,
                        ),
                      ),
                    );
                  },
                  onWillAccept: (data) {
                    return true;
                  },
                  onAccept: (data) {
                    if (data % 2 == 0) {
                      scaffoldKey.currentState.showSnackBar(
                        SnackBar(content: Text("Correct!")),
                      );
                    } else {
                      scaffoldKey.currentState.showSnackBar(
                        SnackBar(content: Text("Wrong!")),
                      );
                    }
                  },
                ),
              ),
              Container(
                width: 100.0,
                height: 100.0,
                color: Colors.deepPurple,
                child: DragTarget(
                  builder: (context, List<int> candidateData, rejectedData) {
                    return Center(
                      child: Text(
                        "Odd",
                        style: TextStyle(color: Colors.white, fontSize: 22.0),
                      ),
                    );
                  },
                  onWillAccept: (data) {
                    return true;
                  },
                  onAccept: (data) {
                    if (data % 2 != 0) {
                      scaffoldKey.currentState.showSnackBar(
                        SnackBar(content: Text("Correct!")),
                      );
                    } else {
                      scaffoldKey.currentState.showSnackBar(
                        SnackBar(content: Text("Wrong!")),
                      );
                    }
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
