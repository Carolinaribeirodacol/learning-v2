import 'dart:convert';
import 'package:cult/api.dart';
import 'package:cult/models/city.dart';
import 'package:flutter/material.dart';

class ListCities extends StatefulWidget {
  @override
  _ListCitiesState createState() => _ListCitiesState();
}

class _ListCitiesState extends State<ListCities> {
  var cities = <City>[];

  _getCities() {
    API.getCities().then((response) {
      print(json.decode(response.body)['data']['data']);
      setState(() {
        Iterable lista = json.decode(response.body)['data']['data'];
        cities = lista.map((model) => City.fromJson(model)).toList();
      });
    });
  }

  _ListCitiesState() {
    _getCities();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Lista do meu amorzinho")),
        body: listCities());
  }

  listCities() {
    print(cities);
    return ListView.builder(
        itemCount: cities.length,
        itemBuilder: (context, int index) {
          return ListTile(
              title: Text(cities[index].name + ' ' + cities[index].stateCode,
                  style: TextStyle(fontSize: 20.0, color: Colors.black)));
        });
  }
}
