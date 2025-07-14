import 'package:flutter/material.dart';


alert(BuildContext context, String titulo, String texto) {
  Widget ok = FlatButton(
    child: Text("ok"),
    onPressed:  () {
      Navigator.of(context).pop();
    },
  );
  AlertDialog alert = AlertDialog(
    title: Text(titulo),
    content: Text(texto),
    actions: [
      ok
    ],
  );
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}