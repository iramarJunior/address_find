import 'package:flutter/material.dart';

class ResultItem extends StatelessWidget {
  final String _title;
  final String _result;

  ResultItem(this._title, this._result);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Text(
          _title,
          textAlign: TextAlign.left,
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(_result),
        ),
      ],
    );
  }
}
