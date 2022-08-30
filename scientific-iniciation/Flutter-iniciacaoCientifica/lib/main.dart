import 'package:flutter/material.dart';
import 'package:login/pages/login.pages.dart';
import 'package:login/pages/cadastro.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Login',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xff644b81),
        cursorColor: Colors.white70,
        brightness: Brightness.light,
        textSelectionHandleColor: Colors.indigoAccent,
      ),
      home: LoginPage(),
    );
  }
}

class cadastro extends StatefulWidget {
  @override
  _cadastroState createState() => _cadastroState();
}

class _cadastroState extends State<cadastro> {
  @override
  Widget build(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => cadastro()),
    );
  }
}
