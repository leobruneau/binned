import 'package:custom_marker/marker_icon.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapScreen extends StatefulWidget {
  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  static const double _zoom = 19;
  static const double _tilt = 45;

  static const _initialCameraPosition = CameraPosition(
    target: LatLng(46.520023965784645, 6.566745158224456),
    zoom: 16.5,
  );

  late GoogleMapController _googleMapController;

  @override
  void dispose() {
    _googleMapController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        mapType: MapType.satellite,
        myLocationButtonEnabled: false,
        zoomControlsEnabled: false,
        rotateGesturesEnabled: false,
        tiltGesturesEnabled: false,
        mapToolbarEnabled: false,
        myLocationEnabled: false,
        initialCameraPosition: _initialCameraPosition,
        onMapCreated: (controller) => _googleMapController = controller,
        markers: {
          Marker(
            markerId: MarkerId('bin1'),
            onTap: () => _googleMapController.animateCamera(
              CameraUpdate.newCameraPosition(
                CameraPosition(
                  target: LatLng(46.520143, 6.568702),
                  zoom: _zoom,
                  tilt: _tilt,
                ),
              ),
            ),
            infoWindow: InfoWindow(
              title: 'Recycling bin 1',
              snippet: 'Status: 50% full',
            ),
            position: LatLng(46.520143, 6.568702),
            icon: BitmapDescriptor.defaultMarkerWithHue(
                BitmapDescriptor.hueGreen),
          ),
          Marker(
            markerId: MarkerId('bin2'),
            onTap: () => _googleMapController.animateCamera(
              CameraUpdate.newCameraPosition(
                CameraPosition(
                  target: LatLng(46.521158, 6.564590),
                  zoom: _zoom,
                  tilt: _tilt,
                ),
              ),
            ),
            infoWindow: InfoWindow(
              title: 'Recycling bin 2',
              snippet: 'Status: 35% full',
            ),
            position: LatLng(46.521158, 6.564590),
            icon: BitmapDescriptor.defaultMarkerWithHue(
                BitmapDescriptor.hueGreen),
          ),
          Marker(
            markerId: MarkerId('bin3'),
            onTap: () => _googleMapController.animateCamera(
              CameraUpdate.newCameraPosition(
                CameraPosition(
                  target: LatLng(46.518500, 6.565121),
                  zoom: _zoom,
                  tilt: _tilt,
                ),
              ),
            ),
            infoWindow: InfoWindow(
              title: 'Recycling bin 3',
              snippet: 'Status: 75% full',
            ),
            position: LatLng(46.518500, 6.565121),
            icon: BitmapDescriptor.defaultMarkerWithHue(
                BitmapDescriptor.hueGreen),
          ),
          Marker(
            markerId: MarkerId('bin4'),
            onTap: () => _googleMapController.animateCamera(
              CameraUpdate.newCameraPosition(
                CameraPosition(
                  target: LatLng(46.519479092553546, 6.567505154693667),
                  zoom: _zoom,
                  tilt: _tilt,
                ),
              ),
            ),
            infoWindow: InfoWindow(
              title: 'Recycling bin 4',
              snippet: 'Status: 25% full',
            ),
            position: LatLng(46.519479092553546, 6.567505154693667),
            icon: BitmapDescriptor.defaultMarkerWithHue(
                BitmapDescriptor.hueGreen),
          ),
          Marker(
            markerId: MarkerId('recycling_point'),
            onTap: () => _googleMapController.animateCamera(
              CameraUpdate.newCameraPosition(
                CameraPosition(
                  target: LatLng(46.520304, 6.565634),
                  zoom: _zoom,
                  tilt: _tilt,
                ),
              ),
            ),
            infoWindow: InfoWindow(
              title: 'Collection Point',
              snippet: 'Recycling point',
            ),
            position: LatLng(46.520304, 6.565634),
            icon: BitmapDescriptor.defaultMarkerWithHue(
                BitmapDescriptor.hueAzure),
          ),
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).colorScheme.secondary,
        foregroundColor: Theme.of(context).canvasColor,
        onPressed: () => _googleMapController.animateCamera(
          CameraUpdate.newCameraPosition(_initialCameraPosition),
        ),
        child: const Icon(Icons.center_focus_strong),
      ),
    );
  }
}
