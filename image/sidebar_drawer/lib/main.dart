import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: "Sidebar",
    home: new Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo Sidebar (Drawer)"),
        backgroundColor: Colors.black,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Boby Maulana"),
              accountEmail: Text("bomasu7@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://cdn.iconscout.com/icon/premium/png-256-thumb/programmer-1729072-1469510.png"),
              ),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://www.digitaldesignjournal.com/wp-content/uploads/2018/07/Programming-World-Map-Wallpaper.jpg"),
                      fit: BoxFit.cover)),
            ),
            ListTile(
              title: Text("Setting"),
              trailing: Icon(Icons.settings),
            ),
            ListTile(
              title: Text("Close"),
              trailing: Icon(Icons.close),
            ),
          ],
        ),
      ),
      body: Container(),
    );
  }
}
