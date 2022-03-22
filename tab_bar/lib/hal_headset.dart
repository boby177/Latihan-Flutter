import 'package:flutter/material.dart';

class Headset extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(20.0),
            ),
            new Text("HEADSET", style: TextStyle(fontSize: 30.0)),
            Padding(
              padding: EdgeInsets.all(20.0),
            ),
            Icon(
              Icons.headset,
              size: 90.0,
            )
          ],
        ),
      ),
    );
  }
}
