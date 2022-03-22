import 'package:flutter/material.dart';

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

class _HomeState extends State<Home> {
  List<String> agama = ["Islam", "Kristem", "Katholik", "Buddha", "Hindu"];
  String _agama = "Islam";

  String _jk = "";
  // underscore(_) pada flutter ini berarti dia merupakan private variabel

  TextEditingController controllerNama = TextEditingController();
  TextEditingController controllerPass = TextEditingController();
  TextEditingController controllerMoto = TextEditingController();

  void _pilihjk(String value) {
    setState(() {
      _jk = value;
    });
  }

  void pilihagama(String value) {
    setState(() {
      _agama = value;
    });
  }

  void kirimdata() {
    AlertDialog alertDialog = AlertDialog(
      content: Container(
        height: 200.0,
        child: Column(
          children: [
            Text("Nama Lengkap : ${controllerNama.text}"),
            Text("Password : ${controllerPass.text}"),
            Text("Moto Hidup : ${controllerMoto.text}"),
            Text("Jenis Kelamin : $_jk"),
            Text("Agama : $_agama"),
            RaisedButton(
              child: Text("OK"),
              onPressed: () => Navigator.pop(context),
            )
          ],
        ),
      ),
    );
    showDialog(context: context, child: alertDialog);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.list),
        title: Text("Formulir"),
        backgroundColor: Colors.grey,
      ),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(10.0),
            child: Column(
              children: [
                TextField(
                  controller: controllerNama,
                  decoration: InputDecoration(
                      hintText: "Nama Lengkap",
                      labelText: "Nama",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      )),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20.0),
                ),
                TextField(
                  controller: controllerPass,
                  obscureText: true, //membuat teks password menjadi bintang
                  decoration: InputDecoration(
                      hintText: "Password",
                      labelText: "Password",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      )),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20.0),
                ),
                TextField(
                  controller: controllerMoto,
                  maxLines: 3,
                  decoration: InputDecoration(
                      hintText: "Moto Hidup",
                      labelText: "Moto",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      )),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20.0),
                ),
                RadioListTile(
                  value: "Laki-laki",
                  title: Text("Laki"),
                  groupValue: _jk,
                  onChanged: (String value) {
                    _pilihjk(value);
                  },
                  activeColor: Colors.red,
                  subtitle: Text("Pilih ini jika anda laki"),
                ),
                RadioListTile(
                  value: "Perempuan",
                  title: Text("Perempuan"),
                  groupValue: _jk,
                  onChanged: (String value) {
                    _pilihjk(value);
                  },
                  activeColor: Colors.red,
                  subtitle: Text("Pilih ini jika anda perempuan"),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20.0),
                ),
                Row(
                  children: [
                    Text(
                      "Agama   ",
                      style: TextStyle(fontSize: 20.0, color: Colors.red),
                    ),
                    DropdownButton(
                      onChanged: (String value) {
                        pilihagama(value);
                      },
                      value: _agama,
                      items: agama.map((String value) {
                        return new DropdownMenuItem(
                          value: value,
                          child: new Text(value),
                        );
                      }).toList(),
                    )
                  ],
                ),
                RaisedButton(
                  child: Text("OK"),
                  color: Colors.red,
                  onPressed: () {
                    kirimdata();
                  },
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
