import 'package:flutter/material.dart';
import './hal_komputer.dart' as komputer;
import './hal_radio.dart' as radio;
import './hal_headset.dart' as headset;
import './hal_smartphone.dart' as smartphone;

void main() {
  runApp(new MaterialApp(
    title: "Card & Parsing",
    home: new Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    // TODO: implement initState
    controller = TabController(vsync: this, length: 4);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.amber,
        title: Text("Daftar Elektronik"),
        bottom: TabBar(
          controller: controller,
          tabs: <Widget>[
            new Tab(
              icon: Icon(Icons.computer),
              text: "Komputer",
            ),
            new Tab(
              icon: Icon(Icons.headset),
              text: "Headset",
            ),
            new Tab(
              icon: Icon(Icons.radio),
              text: "Radio",
            ),
            new Tab(
              icon: Icon(Icons.smartphone),
              text: "HP",
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: controller,
        children: [
          komputer.Komputer(),
          headset.Headset(),
          radio.Radio(),
          smartphone.Smartphone(),
        ],
      ),
      bottomNavigationBar: Material(
        color: Colors.amber,
        child: TabBar(
          controller: controller,
          tabs: <Widget>[
            new Tab(
              icon: Icon(Icons.computer),
            ),
            new Tab(
              icon: Icon(Icons.headset),
            ),
            new Tab(
              icon: Icon(Icons.radio),
            ),
            new Tab(
              icon: Icon(Icons.smartphone),
            ),
          ],
        ),
      ),
    );
  }
}
