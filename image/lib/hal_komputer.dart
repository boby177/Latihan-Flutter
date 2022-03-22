import 'package:flutter/material.dart';

class Komputer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(20.0),
            ),
            new Text("KOMPUTER", style: TextStyle(fontSize: 30.0)),
            Padding(
              padding: EdgeInsets.all(20.0),
            ),
            new Image.asset("img/computer.png", width: 200.0)
          ],
        ),
      ),
    );
  }
}
