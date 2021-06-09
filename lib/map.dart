import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong/latlong.dart';
import 'package:user_location/user_location.dart';

class map extends StatelessWidget {
  MapController mapController = MapController();
  UserLocationOptions userLocationOptions;
  List<Marker> markers = [];

  @override
  Widget build(BuildContext context) {
    userLocationOptions = UserLocationOptions(
      context: context,
      mapController: mapController,
      zoomToCurrentLocationOnLoad: true,
      updateMapLocationOnPositionChange: true,
      showMoveToCurrentLocationFloatingActionButton: true,
      markers: markers,
    );

    return Scaffold(
      body: FlutterMap(
        options: MapOptions(
            center: LatLng(51.5074, 0.1278),
            zoom: 16.0,
            minZoom: 10,
            plugins: [UserLocationPlugin()]),
        layers: [
          new TileLayerOptions(
            urlTemplate:
                'https://api.mapbox.com/styles/v1/jchay-dev/ckpnirpaj0ily19lcu2tis4sm/tiles/256/{z}/{x}/{y}@2x?access_token=*****************************************
            additionalOptions: {
              'accessToken':
                  '********************************************************************'
            },
          ),
          MarkerLayerOptions(
            markers: markers,
          ),
          userLocationOptions,
        ],
        mapController: mapController,
      ),
    );
  }
}
