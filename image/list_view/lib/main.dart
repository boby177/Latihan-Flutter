import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: "List View",
    home: new Home(),
  ));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: Text("Daftar Isi"),
      ),
      body: ListView(
        children: [
          DaftarList(
              gambar:
                  'https://i.pinimg.com/originals/72/3d/0a/723d0af616b1fe7d5c7e56a3532be3cd.png',
              judul: "Game"),
          DaftarList(
              gambar:
                  'https://w7.pngwing.com/pngs/95/738/png-transparent-computer-software-software-development-health-care-apps-design-logo-computer-program-mobile-app-development.png',
              judul: "Programming"),
          DaftarList(
              gambar:
                  'https://www.pngitem.com/pimgs/m/98-980164_tips-and-tricks-logo-hd-png-download.png',
              judul: "Tips"),
          DaftarList(
              gambar:
                  'https://i.pinimg.com/originals/72/3d/0a/723d0af616b1fe7d5c7e56a3532be3cd.png',
              judul: "Game"),
        ],
      ),
    );
  }
}

class DaftarList extends StatelessWidget {
  DaftarList({this.gambar, this.judul});

  final String gambar;
  final String judul;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      child: Center(
        child: Row(
          children: [
            Image(
              image: NetworkImage(gambar),
              width: 70.0,
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              child: Center(
                  child: Column(
                children: [
                  Text(
                    judul,
                    style: TextStyle(fontSize: 20.0),
                  ),
                  Text(
                    "Deskripsi bla",
                    style: TextStyle(fontSize: 15.0, color: Colors.green),
                  )
                ],
              )),
            )
          ],
        ),
      ),
    );
  }
}
