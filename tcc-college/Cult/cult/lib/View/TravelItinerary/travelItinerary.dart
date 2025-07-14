import 'package:cult/Controller/endDrawer.dart';
import 'package:flutter/material.dart';

class Itinerary extends StatelessWidget {
  final List itinerary;

  const Itinerary({Key key, this.itinerary}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.undo),
            color: Colors.white,
            iconSize: 33,
            onPressed: () => Navigator.pop(context)),
      ),
      endDrawer: EndDrawer(),
      body: Container(
        padding: EdgeInsets.only(top: 40, right: 30, left: 30),
        child: Container(
          child: ListView.builder(
            itemCount: itinerary.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/InProgress');
                },
                child: Container(
                  height: 70,
                  margin: EdgeInsets.only(top: 16),
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    image: DecorationImage(
                      image: AssetImage(itinerary[index]),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.centerRight,
                        child:
                            Icon(Icons.favorite_border, color: Colors.white60),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Nome da cidade",
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
