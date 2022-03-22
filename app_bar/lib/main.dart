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
          child: new Text("Aplikasi"),
        ),
        actions: <Widget>[new Icon(Icons.search)],
      ),
    );
  }
}
