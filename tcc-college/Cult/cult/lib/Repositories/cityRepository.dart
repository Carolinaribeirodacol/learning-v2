import 'package:cult/Models/cityModel.dart';
import 'package:dio/dio.dart';
import 'dart:async';
import 'dart:convert';

Future<CityModel> getCities() async {
  try {
    final response = await Dio()
        .get('http://10.0.2.2:8080/api/v1/cities?limit=20&country_code=BR');
    final cities = (response.data["data"]["data"] as List).map((item) {
      return CityModel.fromJson(item);
    }).toList();
  } catch (e) {
    print(e);
  }
}
