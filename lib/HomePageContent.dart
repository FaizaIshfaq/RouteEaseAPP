import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:ui' as ui;
import 'package:route_ease/nav_drawer.dart';

class MapSample extends StatefulWidget {
  const MapSample({Key? key}) : super(key: key);

  @override
  State<MapSample> createState() => _MapSampleState();
}

class _MapSampleState extends State<MapSample> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  GoogleMapController? _mapController;
  List<BitmapDescriptor?> markerIcons = List.filled(6, null);
  @override
  void initState(){
    addCustomIcons();
    super.initState();
  }
  void addCustomIcons() async {
    for (int i = 0; i < markerIcons.length; i++) {
      final markerIconData = await getBytesFromAsset(
        'assets/images/Route${i + 1}.png',
        100, // Set the desired width of the marker
      );

      setState(() {
        markerIcons[i] = BitmapDescriptor.fromBytes(markerIconData);
      });
    }
  }

  Future<Uint8List> getBytesFromAsset(String path, int width) async {
    final ByteData data = await rootBundle.load(path);
    final Uint8List? bytes = data.buffer.asUint8List();
    if (bytes != null) {
      final ui.Codec codec = await ui.instantiateImageCodec(
        bytes,
        targetWidth: width,
      );
      final ui.FrameInfo fi = await codec.getNextFrame();
      final ByteData? byteData = await fi.image.toByteData(format: ui.ImageByteFormat.png);
      return byteData?.buffer.asUint8List() ?? Uint8List(0);
    }
    return Uint8List(0);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        actions: <Widget>[Container()],
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 285,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 8, 8, 8),
                    child: Image.asset(
                      "assets/images/searchIcon.png",
                      width: 25,
                      height: 25,
                    ),
                  ),
                  const Expanded(
                    child: TextField(
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                      ),
                      decoration: InputDecoration(
                        hintText: 'Search here',
                        hintStyle: TextStyle(
                          color: Color(0xFFC2C4CC),
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap:(){
                _scaffoldKey.currentState!.openEndDrawer();
              },
              child: Container(
                margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5), // Set the desired border radius value
                  color: Color(0xFF252C3D), // Optional: Set the desired background color
                ),
                child: Icon(
                  Icons.menu,
                  size: 25,
                ),
              ),
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          GoogleMap(
            onMapCreated: (controller) {
              _mapController = controller;
            },
            initialCameraPosition: CameraPosition(
            target: LatLng(31.5204, 74.3587),
            zoom: 10,
          ),
          myLocationEnabled: true,
          zoomControlsEnabled: false,
          // Optional: Enable user location
          markers: {
            Marker(
              markerId: const MarkerId("marker1"),
              position: const LatLng(31.5690, 74.3586),
              icon: markerIcons[0] ?? BitmapDescriptor.defaultMarker,
            ),
            Marker(
              markerId: const MarkerId("marker2"),
              position: const LatLng(31.6211, 74.2824),
              icon: markerIcons[1] ?? BitmapDescriptor.defaultMarker,
            ),
            Marker(
              markerId: const MarkerId("marker3"),
              position: const LatLng(31.5755, 74.4943),
              icon: markerIcons[2] ?? BitmapDescriptor.defaultMarker,
            ),
            Marker(
              markerId: const MarkerId("marker4"),
              position: const LatLng(31.7250,74.2677),
              icon: markerIcons[3] ?? BitmapDescriptor.defaultMarker,
            ),
            Marker(
              markerId: const MarkerId("marker5"),
              position: const LatLng(31.1179, 74.4408),
              icon: markerIcons[4] ?? BitmapDescriptor.defaultMarker,
            ),
            Marker(
              markerId: const MarkerId("marker6"),
              position: const LatLng(31.2449, 74.2137),
              icon: markerIcons[5] ?? BitmapDescriptor.defaultMarker,
            ),

            },
          ),
          Positioned(
            bottom: 40,
            right: 16,
            child: Container(
              width:40,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    spreadRadius: 1,
                    blurRadius: 3,
                    offset: Offset(0, 1),
                  ),
                ],
                shape: BoxShape.circle,
              ),
              child: FloatingActionButton(
                onPressed: () {
                  if (_mapController != null) {
                    _mapController!.animateCamera(
                      CameraUpdate.zoomIn(),
                    );
                  }
                },
                child: Icon(Icons.add,size: 30,),
                backgroundColor: Color(0xFF252C3D),
                foregroundColor: Colors.white,
              ),
            ),
          ),
        ],
      ),
      endDrawer: NavDrawer(),
    );
  }
}
