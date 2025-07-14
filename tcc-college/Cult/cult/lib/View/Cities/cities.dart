import 'package:cult/Controller/divider.dart';
import 'package:cult/Controller/endDrawer.dart';
import 'package:cult/Models/cityModel.dart';
import 'package:cult/Repositories/CityRepository.dart';
import 'package:cult/View/TravelItinerary/travelItinerary.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class Cities extends StatefulWidget {
  @override
  _CitiesState createState() => _CitiesState();
}

class _CitiesState extends State<Cities> {
  final List _selecteCities = [];
  // List _cities = getCities();

  // teste
  Future<CityModel> futureCity;

  @override
  void initState() {
    super.initState();
    futureCity = getCities();
  }

  // Map<String, dynamic> _cities = {
  //   "responseCode": "1",
  //   "responseText": "List cities",
  //   "responseBody": [
  //     {
  //       "id": "1",
  //       "name": "Paraty",
  //       "image": "assets/paraty.jpg",
  //       "check": false
  //     },
  //     {
  //       "id": "2",
  //       "name": "Porto de galinhas",
  //       "image": "assets/portodegalinhas.jpg",
  //       "check": false
  //     },
  //     {
  //       "id": "3",
  //       "name": "Salvador",
  //       "image": "assets/salvador.jpg",
  //       "check": false
  //     },
  //     {
  //       "id": "4",
  //       "name": "Ouro Preto",
  //       "image": "assets/ouropreto.jpg",
  //       "check": false
  //     },
  //   ],
  // };

  void _onCitySelected(bool selected, image) {
    if (selected == true) {
      setState(() {
        _selecteCities.add(image);
      });
    } else {
      setState(() {
        _selecteCities.remove(image);
      });
    }
  }

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
        title: Text('Cidades'),
      ),
      endDrawer: EndDrawer(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(30),
            child: Column(
              children: [
                Center(
                  child: Image.asset('assets/destino.png', width: 40),
                ),
                dividerController(),
                Text(
                  "Escolha o seu destino:",
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff7209b7)),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          Container(
            height: 200,
            child: FutureBuilder<CityModel>(
              future: futureCity,
              builder: (context, snapshot) {
                print(snapshot.data);
                if (snapshot.hasData) {
                  return Text(snapshot.data.name);
                } else if (snapshot.hasError) {
                  return Text("${snapshot.error}");
                }

                // By default, show a loading spinner.
                return CircularProgressIndicator();
              },
            ),
          ),
// teste
// body: Center(
//           child: FutureBuilder<Album>(
//             future: futureAlbum,
//             builder: (context, snapshot) {
//               if (snapshot.hasData) {
//                 return Text(snapshot.data!.title);
//               } else if (snapshot.hasError) {
//                 return Text("${snapshot.error}");
//               }

//               // By default, show a loading spinner.
//               return CircularProgressIndicator();
//             },
//           ),
//         ),

          // child: ListView.builder(
          //     itemCount: _cities.length,
          //     itemBuilder: (BuildContext context, int index) {
          //       return Container(
          //         alignment: Alignment.center,
          //         width: 280,
          //         margin: EdgeInsets.all(5),
          //         child: Text(
          //           _cities[index]['name'],
          //           textAlign: TextAlign.center,
          //         ),
          //       );
          //     })),
          // Expanded(
          //   child: ListView.builder(
          //     scrollDirection: Axis.horizontal,
          //     itemCount: _cities["responseBody"].length,
          //     itemBuilder: (BuildContext context, int index) {
          //       return Container(
          //         alignment: Alignment.center,
          //         width: 280,
          //         margin: EdgeInsets.all(5),
          //         child: GestureDetector(
          //           onTap: () {
          //             if (!_cities['responseBody'][index]['check']) {
          //               _cities['responseBody'][index]['check'] = true;
          //               _onCitySelected(_cities['responseBody'][index]['check'],
          //                   _cities['responseBody'][index]['image']);
          //             } else {
          //               _cities['responseBody'][index]['check'] = false;
          //               _onCitySelected(_cities['responseBody'][index]['check'],
          //                   _cities['responseBody'][index]['image']);
          //             }
          //           },
          //           child: Stack(
          //             children: [
          //               Container(
          //                 decoration: BoxDecoration(
          //                   borderRadius: BorderRadius.circular(20),
          //                   image: DecorationImage(
          //                     image: AssetImage(
          //                         _cities['responseBody'][index]['image']),
          //                     fit: BoxFit.cover,
          //                   ),
          //                 ),
          //               ),
          //               Center(
          //                 child: Text(
          //                   _cities['responseBody'][index]['name'],
          //                   style: TextStyle(
          //                     fontSize: 40,
          //                     color: Colors.white,
          //                     fontWeight: FontWeight.w600,
          //                     shadows: [
          //                       Shadow(
          //                         offset: Offset(3.0, 2.0),
          //                         blurRadius: 1.0,
          //                         color: Colors.black54,
          //                       ),
          //                     ],
          //                   ),
          //                   textAlign: TextAlign.center,
          //                 ),
          //               ),
          //               Center(
          //                 child: Visibility(
          //                   visible: _cities['responseBody'][index]['check'],
          //                   child: Stack(
          //                     children: [
          //                       Container(
          //                         decoration: BoxDecoration(
          //                           borderRadius: BorderRadius.circular(20),
          //                           color: Colors.black54,
          //                         ),
          //                         alignment: Alignment.center,
          //                       ),
          //                       Center(
          //                         child: Icon(Icons.check,
          //                             color: Colors.white, size: 90),
          //                       ),
          //                     ],
          //                   ),
          //                 ),
          //               ),
          //             ],
          //           ),
          //         ),
          //       );
          //     },
          //   ),
          // ),
          dividerController(),
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 50.0,
              margin: EdgeInsets.only(right: 10),
              child: FlatButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Itinerary(
                                itinerary: _selecteCities,
                              )));
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
                          constraints:
                              BoxConstraints(maxWidth: 200, minHeight: 50.0),
                          alignment: Alignment.center,
                          child: Text(
                            "Avançar",
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
                ),
              ),
            ),
          ),
          dividerController(),
        ],
      ),
    );
  }
}
