import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatelessWidget {
  /*final String lat = "37.3230";
  final String lng = "-122.0312";*/
  final String lat = "11.1007127";
  final String lng = "76.9657916";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tracking Location"),
      ),
      body: Column(
        children: <Widget>[
          // ...
          ListTile(
            textColor: Colors.greenAccent,
            title: Text("Launch Maps"),
            onTap: () async {
              final String googleMapsUrl = "comgooglemaps://?center=$lat,$lng";
              final String appleMapsUrl = "https://maps.apple.com/?q=$lat,$lng";

              if (await canLaunch(googleMapsUrl)) {
                await launch(googleMapsUrl);
              }
              if (await canLaunch(appleMapsUrl)) {
                await launch(appleMapsUrl, forceSafariVC: false);
              } else {
                throw "Couldn't launch URL";
              }
            },
          ),
        ],
      ),
    );
  }
}