import 'package:cult/Controller/divider.dart';
import 'package:cult/Controller/endDrawer.dart';
import 'package:cult/Repositories/cityRepository.dart';
import 'package:flutter/material.dart';

class MyTrip extends StatefulWidget {
  @override
  _MyTripState createState() => _MyTripState();
}

class _MyTripState extends State<MyTrip> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: IconButton(
              icon: Icon(Icons.undo),
              color: Colors.white,
              iconSize: 33,
              onPressed: () => Navigator.pop(context)),
        ),
        endDrawer: EndDrawer(),
        body: SingleChildScrollView(
            child: Center(
                child: Container(
          color: Colors.white,
          padding: EdgeInsets.only(top: 10, right: 30, left: 30, bottom: 20),
          child: Column(children: [
            dividerController(),
            Container(
              height: 50.0,
              margin: EdgeInsets.only(right: 10),
              child: FlatButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/Cities');
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(26.0)),
                padding: EdgeInsets.all(0.0),
                child: Ink(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Color(0xff7209b7), Color(0xff64B6FF)],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ),
                      borderRadius: BorderRadius.circular(26.0)),
                  child: Container(
                    constraints: BoxConstraints(maxWidth: 200, minHeight: 50.0),
                    alignment: Alignment.center,
                    child: Text(
                      "Programar dias",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            dividerController(),
            Text(
              'Dias programados:',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                height: 2,
                fontSize: 18,
                color: Color(0xff7209b7),
              ),
            ),
            dividerController(),
            Text(
              '0/3',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 17,
                color: Color(0xff1e4e87),
              ),
            ),
          ]),
        ))));
  }
}
