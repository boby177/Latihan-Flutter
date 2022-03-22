import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: "Aplikasi",
    home: new HalamanSatu(),
  ));
}

class HalamanSatu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.amber, //memberi warna bacground dari aktivity
      appBar: new AppBar(
        backgroundColor: Colors.red,
        leading: new Icon(Icons.home), //tampilan bar disebelah kiri
        title: new Center(
          child: new Text("Aplikasi"), //child hanya berlaku 1 saja
        ),
        actions: <Widget>[new Icon(Icons.search)],
      ),
      body: new Container(
        child: new Column(
          children: <Widget>[
            new Icon(Icons.local_pizza, size: 70.0, color: Colors.white),
            new Row(
              children: <Widget>[
                new Icon(Icons.access_alarm_sharp,
                    size: 70.0, color: Colors.redAccent),
                new Icon(Icons.access_alarm_sharp,
                    size: 70.0, color: Colors.redAccent),
                new Icon(Icons.access_alarm_sharp,
                    size: 70.0, color: Colors.redAccent),
              ],
            ),
            new Icon(Icons.add_alarm, size: 70.0, color: Colors.blue),
          ],
        ),
      ),
    );
  }
}
