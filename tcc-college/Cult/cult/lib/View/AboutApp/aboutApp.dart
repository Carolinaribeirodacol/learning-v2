import 'package:flutter/material.dart';

class AboutApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.undo),
          color: Colors.white,
          iconSize: 33,
          onPressed: () => Navigator.pop(context, false),
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(
          top: 30,
          left: 30,
          right: 30,
          bottom: 40,
        ),
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            //  ########################  IMAGEM DA DESENVOLVEDORA ################################################

            Center(
              child: Container(
                width: 250,
                color: Colors.white,
                child: Image.asset("assets/Cult.png"),
              ),
            ),

            SizedBox(
              height: 40,
            ),

            Text(
              "Tema: Guia turístico para cidades históricas\n\n"
              "Objetivo: O aplicativo tem como objetivo oferecer uma"
              " experiência melhor para os usuários em suas viagens, com "
              "diversos recursos que facilitam os seus percursos e enriquecem"
              " o seu conhecimento.",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: Colors.black54,
              ),
              textAlign: TextAlign.left,
            ),
          ],
        ),
      ),
    );
  }
}
