import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert' as JSON;

void main() {
  runApp(new MaterialApp(
    title: "List View JSON",
    home: new Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List dataJSON;

  Future<String> ambildata() async {
    http.Response hasil = await http.get(
        Uri.encodeFull("https://jsonplaceholder.typicode.com/posts"),
        headers: {"Accept": "application/json"});

    this.setState(() {
      dataJSON = JSON.decode(hasil.body);
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    this.ambildata();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List View Data JSON"),
      ),
      body: ListView.builder(),
      itemCount: dataJSON== null ? 0 : dataJSON.length,
      itemBuilder: (context,i){
        return card(child: )
      }
    );
  }
}
