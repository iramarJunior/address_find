import 'package:address_finder/components/result_item.dart';
import 'package:address_finder/models/address.dart';
import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;
import 'dart:convert';

class FormCep extends StatefulWidget {
  @override
  _FormCepState createState() => _FormCepState();
}

class _FormCepState extends State<FormCep> {
  final TextEditingController _controllerFieldCep = TextEditingController();

  Address address = Address(
    unidade: '',
    uf: '',
    logradouro: '',
    ibge: '',
    complemento: '',
    gia: '',
    cep: '',
    bairro: '',
    localidade: '',
  );

  void changeAddress() async {
    Address _address;

    final String cep = _controllerFieldCep.text;
    final String url = "https://viacep.com.br/ws/${cep}/json/";

    if (cep != null) {
      var response = await http.get(url);
      _address = Address.fromJson(jsonDecode(response.body));
    }

    setState(() {
      address = _address;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.fromLTRB(8, 16, 8, 16),
          child: TextField(
            controller: _controllerFieldCep,
            keyboardType: TextInputType.numberWithOptions(),
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Digite seu CEP:',
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(8, 0, 8, 16),
          child: RaisedButton(
            color: Colors.blue,
            child: Text(
              'Buscar',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16.0,
              ),
            ),
            onPressed: () => changeAddress(),
          ),
        ),
        Container(
          child: Padding(
            padding: EdgeInsets.fromLTRB(8, 32, 8, 8),
            child: Column(
              children: <Widget>[
                ResultItem('Logradouro:', address.logradouro),
                ResultItem('Complemento:', address.complemento),
                ResultItem('Bairro:', address.bairro),
                ResultItem('Localidade:', address.localidade),
                ResultItem('UF:', address.uf),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
