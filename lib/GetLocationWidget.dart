// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
//import 'NewConnServScreen.dart';
//import 'WaterLineUpgreadServScreen.dart';

//import 'WaterMeterInspNrwServScreen.dart';
//import 'NameOrLocnChangeServScreen.dart';
//import 'FileCopyServScreen.dart';
//import 'ReconMeterServScreen.dart';
//import 'PaymentCompServScreen.dart';
//import 'ReInstMeterServScreen.dart';
//import 'TermContServScreen.dart';
//import 'LinePolServScreen.dart';

//import 'GovMaintServScreen.dart';
//import 'ManhoClenServScreen.dart';
//import 'ManhoHigServ.dart';

//import 'SewerIlgServScreen.dart';

//import 'SewerMidConServScreen.dart';

//Edit fotm this
// import 'SewerCarServScreen.dart';
// import 'SewerNewConServScreen.dart';
// import 'SewerOpenServScreen.dart';
// import 'WaterLineShiftServScreen.dart';
// import 'WaterMaintServScreen.dart';
// import 'homepage.dart';
// import 'BonoConServScreen.dart';
// import 'RotoServScreen.dart';
// import 'loc.dart';
// import 'SewerLineShifServScreen.dart';
// import 'SewerMaintServScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
  // @override
  //State<StatefulWidget> createState() {
  //throw UnimplementedError();

}

// location

//class _MyAppState extends State<MyApp> {
// function for getting the current location
// but before that you need to add this permission!

//}
// function for opening it in google maps
class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    var cardTextStyle = TextStyle(
        fontFamily: "Montserrat Regular",
        fontSize: 16,
        fontWeight: FontWeight.bold,
        //backgroundColor: Colors.orangeAccent,
        color: Colors.black);
    return Scaffold(
      //backgroundColor: Colors.,
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.lightBlue,
        title: Text(
          "አገልግሎት እና የደንበኛው ግዴታ",
          style: TextStyle(

              //fo
              ),
        ),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height * .3,
          ),
          SafeArea(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                children: <Widget>[
                  Container(
                    height: 30,
                    margin: EdgeInsets.only(bottom: 20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          width: 16,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'አገልግሎት መጠየቂያ',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontFamily: "Montserrat Medium",
                                  color: Colors.black,
                                  decoration: TextDecoration.underline,
                                  // textDecoration: TextDecoration.underline,
                                  fontSize: 20),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: GridView.count(
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      primary: false,
                      crossAxisCount: 2,
                      children: <Widget>[
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                          elevation: 4,
                          child: InkWell(
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  SvgPicture.asset("images/water5.svg",
                                      height: 128, color: Colors.indigoAccent),
                                  Text(
                                    'የአዲስ የውሃ መስመር ቅጥያ',
                                    style: cardTextStyle,
                                  ),

                                  //],
                                ]),
                            // onTap: () => Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //     builder: (context) => LocFind(),
                            //   ),
                            // ),
                          ),
                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                          elevation: 4,
                          child: InkWell(
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  SvgPicture.asset("images/water.svg",
                                      height: 128, color: Colors.indigoAccent),
                                  Text(
                                    'የውሃ መስመር ማሻሻያ',
                                    style: cardTextStyle,
                                  ),

                                  //],
                                ]),
                            // onTap: () => Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //       builder: (context) => LocFind()),
                            // ),
                          ),
                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                          elevation: 4,
                          child: InkWell(
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  SvgPicture.asset("images/water2.svg",
                                      height: 128, color: Colors.indigoAccent),
                                  Text(
                                    'የውሃ መስመር ማዛወሪያ',
                                    style: cardTextStyle,
                                  ),

                                  //],
                                ]),
                            // onTap: () => Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //     builder: (context) =>
                            //         WaterLineShiftServScreen(),
                            //   ),
                            // ),
                          ),
                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                          elevation: 4,
                          child: InkWell(
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  SvgPicture.asset("images/water4.svg",
                                      height: 128, color: Colors.indigoAccent),
                                  Text(
                                    'የደንበኛ የውሃ መስመር ጥገና',
                                    style: cardTextStyle,
                                  ),

                                  //],
                                ]),
                            // onTap: () => Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //     builder: (context) => WaterMaintServScreen(),
                            //   ),
                            // ),
                          ),
                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                          elevation: 4,
                          child: InkWell(
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  SvgPicture.asset("images/ill-sew.svg",
                                      height: 128, color: Colors.indigoAccent),
                                  Text(
                                    'ውሃ በሮቶ ማደል ስራ ሳይቆራረጥ ማቅረብ',
                                    style: cardTextStyle,
                                  ),

                                  //],
                                ]),
                            // onTap: () => Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //     builder: (context) => RotoServScreen(),
                            //   ),
                            // ),
                          ),
                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                          elevation: 4,
                          child: InkWell(
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  SvgPicture.asset("images/water-droplet.svg",
                                      height: 128, color: Colors.indigoAccent),
                                  Text(
                                    'የቦኖ ውሃ መስመር ቅጥያ',
                                    style: cardTextStyle,
                                  ),

                                  //],
                                ]),
                            // onTap: () => Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //     builder: (context) => BonoConServScreen(),
                            //   ),
                            // ),
                          ),
                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                          elevation: 4,
                          child: InkWell(
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  SvgPicture.asset("images/sewer.svg",
                                      height: 128, color: Colors.indigoAccent),
                                  Text(
                                    'የደንበኛ አዲስ የፍሳሽ መስመር ቅጥያ',
                                    style: cardTextStyle,
                                  ),

                                  //],
                                ]),
                            // onTap: () => Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //     builder: (context) => SewerNewConServScreen(),
                            //   ),
                            // ),
                          ),
                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                          elevation: 4,
                          child: InkWell(
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  SvgPicture.asset("images/sew-truck.svg",
                                      height: 128, color: Colors.indigoAccent),
                                  Text(
                                    'ፍሳሽ በተሸከርካሪ ማንሳት',
                                    style: cardTextStyle,
                                  ),

                                  //],
                                ]),
                            // onTap: () => Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //     builder: (context) => SewerCarServScreen(),
                            //   ),
                            // ),
                          ),
                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                          elevation: 4,
                          child: InkWell(
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  SvgPicture.asset("images/maint-sew.svg",
                                      height: 128, color: Colors.indigoAccent),
                                  Text(
                                    'የተሰበረ ፍሳሽ መስመር ጥገና',
                                    style: cardTextStyle,
                                  ),

                                  //],
                                ]),
                            // onTap: () => Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //     builder: (context) => SewerMaintServScreen(),
                            //   ),
                            // ),
                          ),
                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                          elevation: 4,
                          child: InkWell(
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  SvgPicture.asset("images/sew-pip.svg",
                                      height: 128, color: Colors.indigoAccent),
                                  Text(
                                    'የተዘጋ ፍሳሽ መስመር መክፈት',
                                    style: cardTextStyle,
                                  ),

                                  //],
                                ]),
                            // onTap: () => Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //     builder: (context) => SewerOpenServScreen(),
                            //   ),
                            // ),
                          ),
                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                          elevation: 4,
                          child: InkWell(
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  SvgPicture.asset("images/shift-sew.svg",
                                      height: 128, color: Colors.indigoAccent),
                                  Text(
                                    'home',
                                    style: cardTextStyle,
                                  ),

                                  //],
                                ]),
                            // onTap: () => Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //     builder: (context) => CarouselDemo(),
                            //   ),
                            // ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
