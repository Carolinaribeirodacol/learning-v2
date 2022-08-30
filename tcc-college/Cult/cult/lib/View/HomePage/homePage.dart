import 'package:cult/Controller/divider.dart';
import 'package:cult/Controller/endDrawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    /*24 is for notification bar on Android*/
    final double itemHeight = (size.height - kToolbarHeight - 24) / 3;
    final double itemWidth = size.width / 2.5;

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
          title: Text('Home'),
        ),
        endDrawer: EndDrawer(),
        body: Column(
          children: [
            dividerController(),
            Text(
              'Selecione uma opção:',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                height: 2,
                fontSize: 24,
                color: Color(0xff7209b7),
              ),
            ),
            Center(
              child: GridView.count(
                primary: false,
                padding: const EdgeInsets.all(20),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 2,
                shrinkWrap: true,
                childAspectRatio: (itemWidth / itemHeight),
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/NewGuide');
                    },
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Iniciar uma viagem",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xfffff9ec),
                            ),
                          ),
                          dividerController(),
                          Image.asset('assets/mala-de-viagem.png',
                              width: MediaQuery.of(context).size.width * 0.18),
                        ],
                      ),
                      decoration: BoxDecoration(
                          color: Color(0xffc879ff),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Viagens em andamento',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xfffff9ec),
                            ),
                          ),
                          dividerController(),
                          Image.asset('assets/caminhada.png',
                              width: MediaQuery.of(context).size.width * 0.18),
                        ],
                      ),
                      decoration: BoxDecoration(
                          color: Color(0xffff8c42),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/MapPage');
                    },
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Localização atual',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xfffff9ec),
                            ),
                          ),
                          dividerController(),
                          Image.asset('assets/mapa.png',
                              width: MediaQuery.of(context).size.width * 0.18),
                        ],
                      ),
                      decoration: BoxDecoration(
                          color: Color(0xff68c0ff),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Grupos de viagem',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xfffff9ec),
                            ),
                          ),
                          dividerController(),
                          Image.asset('assets/group.png',
                              width: MediaQuery.of(context).size.width * 0.18),
                        ],
                      ),
                      decoration: BoxDecoration(
                          color: Color(0xfffb6376),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
