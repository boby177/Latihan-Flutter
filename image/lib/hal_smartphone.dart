import 'package:flutter/material.dart';

class Smartphone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(20.0),
            ),
            new Text("SMARTPHONE", style: TextStyle(fontSize: 30.0)),
            Padding(
              padding: EdgeInsets.all(20.0),
            ),
            Image(
              image: new NetworkImage(
                  "https://lh3.googleusercontent.com/proxy/oBy8oRzrkWhtLyzekTKQ1m-cQ47oXO60-UaqQ5378q9nYy82DUzDKReMSqDOc7pQE-LJhxxov9T0eiqLSK3h0x0ARhavtclz3ft_0_7SbtUuK513oqw5ROgQD3k"),
              width: 200.0,
            )
          ],
        ),
      ),
    );
  }
}
