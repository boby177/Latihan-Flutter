import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new First(),
  ));
}

class First extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: new Container(
          color: Colors.blue[900],
          width: 200.0,
          height: 100.0,
          child: new Center(
              child: new Text(
            "Boby Maulana",
            style: new TextStyle(
                color: Colors.white, fontFamily: "Serif", fontSize: 20.0),
            // child: new Center(
            //     child: new Icon(
            //   Icons.android,
            //   color: Colors.green,
            //   size: 70.0,
            // )
          )),
        ),
      ),
    );
  }
}
