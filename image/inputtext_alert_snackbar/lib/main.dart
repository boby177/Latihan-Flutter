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
  String teks = "";

  TextEditingController controllerInput = TextEditingController();
  TextEditingController controllerAlert = TextEditingController();
  TextEditingController controllerSnackbar = TextEditingController();

  final GlobalKey<ScaffoldState> _scaffoldState = GlobalKey<ScaffoldState>();

  void _snackbar(String str) {
    if (str.isEmpty) return;

    //menampilkan alert snackbar dibawah
    _scaffoldState.currentState.showSnackBar(SnackBar(
      content: Text(str, style: TextStyle(fontSize: 20.0)),
      duration: Duration(seconds: 3),
    ));
  }

  void _alertdialog(String str) {
    if (str.isEmpty) return;

    AlertDialog alertDialog = new AlertDialog(
        content: Text(
          str,
          style: TextStyle(fontSize: 20.0),
        ),
        actions: [
          RaisedButton(
            color: Colors.red,
            child: Text("OK"),
            onPressed: () {
              Navigator.pop(context);
            },
          )
        ]);

    showDialog(context: context, child: alertDialog);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldState,
      appBar: AppBar(
        title: Text("INPUT TEXT, ALERT DIALOG, SNACKBAR"),
      ),
      body: Container(
        child: Column(
          children: [
            TextField(
              controller: controllerInput,
              decoration: InputDecoration(
                hintText: "Tulis disini",
              ),
              onSubmitted: (String str) {
                setState(() {
                  teks = str + '\n' + teks;
                  controllerInput.text = "";
                });
              },
            ),
            Text(
              teks,
              style: TextStyle(fontSize: 20.0),
            ),
            TextField(
              controller: controllerAlert,
              decoration: InputDecoration(
                hintText: "Tulis untuk alert",
              ),
              onSubmitted: (String str) {
                _alertdialog(str);
                controllerAlert.text =
                    ""; //menghilangkan teks ketika user menekan OK
              },
            ),
            TextField(
              controller: controllerSnackbar,
              decoration: InputDecoration(
                hintText: "Tulis untuk snackbar",
              ),
              onSubmitted: (String str) {
                _snackbar(str);
                controllerSnackbar.text =
                    ""; //menghilangkan teks ketika user menekan OK
              },
            ),
          ],
        ),
      ),
    );
  }
}
