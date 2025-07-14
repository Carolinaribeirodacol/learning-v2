import 'package:cult/View/Cities/amorzinho.dart';
import 'package:cult/View/Cities/inProgress.dart';
import 'package:cult/View/Days/days.dart';
import 'package:cult/View/MyTrip/myTrip.dart';
import 'package:flutter/material.dart';
import 'View/AboutApp/aboutApp.dart';
import 'View/Cities/cities.dart';
import 'View/ForgotPassword/forgotPassword.dart';
import 'View/HomePage/homePage.dart';
import 'View/Login/login.dart';
import 'View/Register/signUp.dart';
import 'View/Maps/maps.dart';
import 'View/TravelItinerary/travelItinerary.dart';
import 'View/NewGuide/newGuide.dart';

void main() async {
  runApp(MaterialApp(
      title: 'Guia Turístico',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          color: Color(0xff7209b7),
        ),
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        primarySwatch: Colors.blue,
        primaryColor: Colors.blue,
      ),
      initialRoute: '/Cities',
      routes: {
        '/Login': (context) => Login(),
        '/HomePage': (context) => HomePage(),
        '/ForgotPassword': (context) => ForgotPassword(),
        '/Cities': (context) => ListCities(),
        '/SignUp': (context) => SignUp(),
        '/Itinerary': (context) => Itinerary(),
        '/AboutApp': (context) => AboutApp(),
        '/MapPage': (context) => MapPage(),
        '/InProgress': (context) => InProgress(),
        '/NewGuide': (context) => NewGuide(),
        '/MyTrip': (context) => MyTrip(),
        '/Days': (context) => Days(),
      }));
}
