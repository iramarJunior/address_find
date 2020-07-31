import 'package:flutter/material.dart';
import 'components/text_result.dart';

void main() {
  runApp(Hello());
}

class Hello extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Endereço Finder'),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Form(),
              TextResult('Logradouro:'),
              TextResult('Complemento:'),
              TextResult('Bairro:'),
              TextResult('Localidade:'),
              TextResult('UF:'),
            ],
          ),
        ),
      ),
    );
  }
}

class Form extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(8.0),
          child: TextField(
            keyboardType: TextInputType.numberWithOptions(),
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Digite seu CEP:',
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(0, 0, 0, 32.0),
          child: RaisedButton(
            color: Colors.blue,
            child: Text(
              'Buscar',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16.0,
              ),
            ),
            onPressed: () => {},
          ),
        ),
      ],
    );
  }
}
