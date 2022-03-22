import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: "List View JSON",
    home: new Home(
      data: List<String>.generate(
          300, (i) => "Ini data Ke $i"), //generate data menggunakan array
    ),
  ));
}

class Home extends StatelessWidget {
  final List<String> data;
  Home({this.data});

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("List View JSON"),
      ),
      body: Container(
        child: ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Icon(Icons.widgets),
              title: Text("${data[index]}"),
            );
          },
        ),
      ),
    );
  }
}
