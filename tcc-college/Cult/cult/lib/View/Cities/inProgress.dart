import 'package:cult/Controller/divider.dart';
import 'package:cult/Controller/endDrawer.dart';
import 'package:flutter/material.dart';

class InProgress extends StatefulWidget {
  @override
  _InProgressState createState() => _InProgressState();
}

class _InProgressState extends State<InProgress> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.undo),
            color: Colors.white,
            iconSize: 33,
            onPressed: () => Navigator.pop(context, false),
          ),
          centerTitle: true,
          title: Text('Paraty'),
        ),
        endDrawer: EndDrawer(),
        body: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(8),
              child: Column(
                children: [
                  Text(
                    "História",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xfffff9ec),
                    ),
                  ),
                  dividerController(),
                  Image.asset('assets/history-book.png',
                      width: MediaQuery.of(context).size.width * 0.25),
                ],
              ),
              decoration: BoxDecoration(
                  color: Color(0xfffaad17),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: Column(
                children: [
                  Text(
                    'Restaurantes',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xfffff9ec),
                    ),
                  ),
                  dividerController(),
                  Image.asset('assets/menu.png',
                      width: MediaQuery.of(context).size.width * 0.25),
                ],
              ),
              decoration: BoxDecoration(
                  color: Color(0xff6699cc),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: Column(
                children: [
                  Text(
                    'Igrejas',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xfffff9ec),
                    ),
                  ),
                  dividerController(),
                  Image.asset('assets/igreja.png',
                      width: MediaQuery.of(context).size.width * 0.25),
                ],
              ),
              decoration: BoxDecoration(
                  color: Color(0xff68c0ff),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: Column(
                children: [
                  Text(
                    'Museus',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xfffff9ec),
                    ),
                  ),
                  dividerController(),
                  Image.asset('assets/museu.png',
                      width: MediaQuery.of(context).size.width * 0.25),
                ],
              ),
              decoration: BoxDecoration(
                  color: Color(0xffff8c42),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: Column(
                children: [
                  Text(
                    'Parques',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xfffff9ec),
                    ),
                  ),
                  dividerController(),
                  Image.asset('assets/parque.png',
                      width: MediaQuery.of(context).size.width * 0.25),
                ],
              ),
              decoration: BoxDecoration(
                  color: Color(0xffc879ff),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: Column(
                children: [
                  Text(
                    'Teatros',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xfffff9ec),
                    ),
                  ),
                  dividerController(),
                  Image.asset('assets/teatro.png',
                      width: MediaQuery.of(context).size.width * 0.25),
                ],
              ),
              decoration: BoxDecoration(
                  color: Color(0xfffb6376),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
            ),
          ],
        ));
  }
}
