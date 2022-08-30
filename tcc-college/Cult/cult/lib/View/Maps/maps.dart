import 'package:cult/Controller/endDrawer.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';

class MapPage extends StatefulWidget {
  @override
  _MapPageState createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  GoogleMapController mapController;
  Set<Marker> markers = Set<Marker>();
  double lat;
  double long;
  List currentPosition = [];

  getCurrentPosition() async {
    final currentPosition = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.best);
    return currentPosition;
  }

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

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
      endDrawer: EndDrawer(),
      body: Container(
        child: FutureBuilder(
          future: getCurrentPosition(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Stack(
                children: <Widget>[
                  GoogleMap(
                    onMapCreated: _onMapCreated,
                    initialCameraPosition: CameraPosition(
                      target:
                      LatLng(snapshot.data.latitude, snapshot.data.longitude),
                      zoom: 20.0,
                    ),
                    markers: markers,
                    myLocationEnabled: true,
                    compassEnabled: true,
                    tiltGesturesEnabled: true,
                    mapType: MapType.normal,
                  ),
                ],
              );
            } else {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
      ),
    );
  }
}
