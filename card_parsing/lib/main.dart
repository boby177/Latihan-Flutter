import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: "Card & Parsing",
    home: new HalamanSatu(),
  ));
}

class HalamanSatu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Card & Parsing"),
      ),
      body: new Container(
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            new CardSaya(
              icon: Icons.home,
              teks: "Home",
              warnaIcon: Colors.red,
            ),
            new CardSaya(
              icon: Icons.favorite,
              teks: "Favorite",
              warnaIcon: Colors.green,
            ),
            new CardSaya(
              icon: Icons.place,
              teks: "Place",
              warnaIcon: Colors.blue,
            ),
            new CardSaya(
              icon: Icons.settings,
              teks: "Setting",
              warnaIcon: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}

class CardSaya extends StatelessWidget {
  //mendeklarasikan variabel
  CardSaya({this.icon, this.teks, this.warnaIcon});
  final IconData icon;
  final String teks;
  final Color warnaIcon;

  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: new EdgeInsets.all(
          10.0), //padding untuk seluruh sisi, atas bawah kiri kanan
      child: new Card(
          child: new Column(
        children: [
          new Icon(icon, size: 50.0, color: warnaIcon),
          new Text(teks, style: new TextStyle(fontSize: 20.0))
        ],
      )),
    );
  }
}
