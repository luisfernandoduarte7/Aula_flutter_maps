
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class Principal extends StatefulWidget {
  const Principal({Key? key}) : super(key: key);

  @override
  _PrincipalState createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FLUTTER COM MAPS'),
        centerTitle: true,
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Stack(
        children: [
          FlutterMap(
            options: MapOptions(center: LatLng(37.7749, -122.4194), zoom: 3),
            children: [
              TileLayer(
                urlTemplate: 'https://tile.thunderforest.com/outdoors/{z}/{x}/{y}.png?apikey=5933b9dc9e6447bd822f176ac1ad4697',
                userAgentPackageName: 'com.example.app',
              ),
              MarkerLayer(
                markers: [
                  Marker(
                    width: 80.0,
                    height: 80.0,
                    point: LatLng(29.433053770162246, -98.51993412456095), // SAN ANTONIO TEXAS EUA
                    builder: (ctx) => Container(
                      child: Icon(Icons.location_on, color: Colors.red),
                    ),
                  ),
                  Marker(
                    width: 80.0,
                    height: 80.0,
                    point: LatLng(29.763137307980813, -95.40959547809649), // HOUSTON TEXAS EUA
                    builder: (ctx) => Container(
                      child: Icon(Icons.location_on, color: Colors.blue),
                    ),
                  ),
                  // Mais marcadores...
                  Marker(
                  width: 80.0,
                  height: 80.0,
                  point: LatLng(32.75596578357631, -96.82505601876794), // DALLAS TEXAS EUA
                    builder: (ctx) => Container(
                     child: Icon(Icons.location_on, color: Colors.yellow),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
