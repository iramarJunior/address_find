import 'package:flutter/material.dart';

class TextResult extends StatelessWidget {
  final String name;

  TextResult(this.name);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            name,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Text('Resultado'),
      ],
    );
  }
}
