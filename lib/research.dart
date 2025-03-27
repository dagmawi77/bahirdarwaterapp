import 'package:flutter/material.dart';

void main() {
  runApp(research());
}

// ignore: camel_case_types
class research extends StatefulWidget {
  // location
  @override
  _researchState createState() => _researchState();
}

// ignore: camel_case_types
class _researchState extends State<research> {
  // function for getting the current location
  // but before that you need to add this permission!

  // function for opening it in google maps

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.,
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.lightBlue,
        title: Text(
          "የዳሰሳ ጥናት",
          style: TextStyle(

              //fo
              ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Card(
              color: Colors.black,
              child: InkWell(
                splashColor: Colors.black.withAlpha(30),

                //child: const SizedBox(
                //width: 300,
                //height: 100,
                child: Text(
                  'Research Page ገጽ በቅርቡ',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ), //
            //(
            //Icons.location_on,
            //size: 45.0,
            //color: Colors.white,
            //),
            //SizedBox(
            //height: 20.0,
            //),
            //Text(
            //"አድራሻዎን ያግኙ",
            //style: TextStyle(
            //fontSize: 25.0,
            //fontWeight: FontWeight.bold,
            //color: Colors.white,
            //),
            //),
            //SizedBox(
            //height: 30.0,
            //),
            //Card(
            //child: InkWell(
            //splashColor: Colors.black.withAlpha(30),

            //child: const SizedBox(
            //width: 300,
            //height: 100,
            //child: Text(locationMessage,style: TextStyle(
            //color: Colors.black,
            //fontSize: 30,
            //),),
            //),
            //),//),
            //    SizedBox(
            //    height: 30.0,
            //),

            //Text(
            //locationMessage,
            //style: TextStyle(
            //color: Colors.white,
            //),
            //),
            //SizedBox(
            //height: 05.0,
            //),

            // button for taking the location
            //RaisedButton(
            //color: Colors.white,

            //onPressed: () {
            //getCurrentLocation();
            //},
            //child: Text("አድራሻዎን ያግኙ"),
            //),

            //RaisedButton(
            //color: Colors.white,

            //onPressed: () {
            //googleMap();
            //},
            //child: Text("በ GoogleMap አረጋግጥ",
            //),
            //),
          ],
        ),
      ),
    );
  }
}
