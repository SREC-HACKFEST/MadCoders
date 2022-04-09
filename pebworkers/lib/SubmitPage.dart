import 'package:flutter/material.dart';
//import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:pebworkers/LocationForm.dart';

void _track(){

  //class HomePage extends StatelessWidget {
  final String lat = "37.3230";
  final String lng = "-122.0312";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("URL Launcher"),
      ),
      body: Column(
        children: <Widget>[
          // ...
          ListTile(
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
  //}
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  get onClick => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
            children: <Widget>[
              Center(
                  child: Card(
                      child: Container(
                          height: 250,
                          width: 450,
                          padding: EdgeInsets.all(16),
                          color: Colors.black12,
                          child: Form(

                              child: SingleChildScrollView(


                                  child:Container(

                                    padding: EdgeInsets.only(left:5.0,top: 80.0),
                                    child: Column(
                                      children:<Widget> [
                                        Text(
                                            'You have successfully loged in!!!',
                                            style: TextStyle(
                                              fontSize: 20,

                                            )
                                        ),
                                        Container(
                                          padding: const EdgeInsets.only(left:10.0,top: 10.0),
                                          child: new RaisedButton(
                                            child: const Text('Continue'),
                                            onPressed: (){
                                              Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()),
                                              );},

                                          ),
                                        )

                                      ],
                                    ),
                                  )

                              )
                          )
                      )
                  )
              )
            ]
        )
    );
  }
}