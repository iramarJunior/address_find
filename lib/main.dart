import 'package:flutter/material.dart';
import 'ui/home.dart';

void main() {
  runApp(AddressFinderApp());
}

class AddressFinderApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Home(),
    );
  }
}
