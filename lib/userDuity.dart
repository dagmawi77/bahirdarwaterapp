import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';

// Next Modifed
// import 'RotoServScreen.dart';
// import 'NewConnServScreen.dart';
// import 'WaterLineUpgreadServScreen.dart';
// import 'WaterLineShiftServScreen.dart';
// import 'WaterMaintServScreen.dart';
// import 'WaterMeterInspNrwServScreen.dart';
// import 'NameOrLocnChangeServScreen.dart';
// import 'FileCopyServScreen.dart';
// import 'ReconMeterServScreen.dart';
// import 'PaymentCompServScreen.dart';
// import 'ReInstMeterServScreen.dart';
// import 'TermContServScreen.dart';
// import 'LinePolServScreen.dart';

// import 'BonoConServScreen.dart';
// import 'GovMaintServScreen.dart';
// import 'ManhoClenServScreen.dart';
// import 'ManhoHigServ.dart';
// import 'SewerCarServScreen.dart';
// import 'SewerIlgServScreen.dart';
// import 'SewerLineShifServScreen.dart';
// import 'SewerMaintServScreen.dart';
// import 'SewerMidConServScreen.dart';
// import 'SewerNewConServScreen.dart';
// import 'SewerOpenServScreen.dart';

void main() {
  runApp(UserDuity());
}

class UserDuity extends StatefulWidget {
  @override
  _UserDuityState createState() => _UserDuityState();
  // @override
  //State<StatefulWidget> createState() {
  //throw UnimplementedError();

}

// location

//class _UserDuityState extends State<UserDuity> {
// function for getting the current location
// but before that you need to add this permission!

//}
// function for opening it in google maps
class _UserDuityState extends State<UserDuity> {
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
     // resizeToAvoidBottomInset: false,
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
                           mainAxisSize: MainAxisSize.max,
                           
                        //  mainAxisAlignment: MainAxisAlignment.center,
                          //crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'አገልግሎት እና የደንበኛው ግዴታ',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontFamily: "Montserrat Medium",
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
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
                                      height: 100, color: Colors.indigoAccent),
                                  Text(
                                    'የአዲስ የውሃ መስመር ቅጥያ',
                                    style: cardTextStyle,
                                  ),

                                  //],
                                ]),
                            // onTap: () => Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //     builder: (context) => NewConnServScreen(),
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
                                      height: 100, color: Colors.indigoAccent),
                                  Text(
                                    'የውሃ መስመር ማሻሻያ',
                                    style: cardTextStyle,
                                  ),
                        
                                  //],
                                ]),
                            // onTap: () => Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //       builder: (context) =>
                            //           WaterLineUpgreadServScreen()),
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
                                      height: 100, color: Colors.indigoAccent),
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
                                      height: 100, color: Colors.indigoAccent),
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
                                  SvgPicture.asset("images/water6.svg",
                                      height: 100, color: Colors.indigoAccent),
                                  Text(
                                    'የደንበኛ ቆጣሪ በማንሳት መመርመር (NRW)',
                                    style: cardTextStyle,
                                  ),
                        
                                  //],
                                ]),
                            // onTap: () => Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //     builder: (context) =>
                            //         WaterMeterInspNrwServScreen(),
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
                                  SvgPicture.asset("images/name_change.svg",
                                      height: 100, color: Colors.indigoAccent),
                                  Text(
                                    'የስም እና የአድራሻ ለውጥ ጥያቄ አገልግሎት',
                                    style: cardTextStyle,
                                  ),
                        
                                  //],
                                ]),
                            // onTap: () => Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //     builder: (context) =>
                            //         NameOrLocnChangeServScreen(),
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
                                  SvgPicture.asset("images/copy-document.svg",
                                      height: 100, color: Colors.indigoAccent),
                                  Text(
                                    'የውል ኮፒ ይሰጠኝ ጥያቄ',
                                    style: cardTextStyle,
                                  ),
                        
                                  //],
                                ]),
                            // onTap: () => Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //     builder: (context) => FileCopyServScreen(),
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
                                  SvgPicture.asset("images/water-meter.svg",
                                      height: 100, color: Colors.indigoAccent),
                                  Text(
                                    'ደንበኞች እዳቸውን እንደከፈሉ ቆጣሪ መልሶ',
                                    style: cardTextStyle,
                                  ),
                        
                                  //],
                                ]),
                            // onTap: () => Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //     builder: (context) => ReconMeterServScreen(),
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
                                  SvgPicture.asset(
                                      "images/customer-complaint.svg",
                                      height: 100,
                                      color: Colors.indigoAccent),
                                  Text(
                                    'ቆጣሪ በማንሳት የውሃ ብክነት ምርመራ ስራ መስራት',
                                    style: cardTextStyle,
                                  ),
                        
                                  //],
                                ]),
                            // onTap: () => Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //     builder: (context) => PaymentCompServScreen(),
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
                                  SvgPicture.asset("images/water-meter.svg",
                                      height: 100, color: Colors.indigoAccent),
                                  Text(
                                    'ለምርመራ የተነሳውን ቆጣሪ መልሶ መቀጠል',
                                    style: cardTextStyle,
                                  ),
                        
                                  //],
                                ]),
                            // onTap: () => Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //     builder: (context) => ReInstMeterServScreen(),
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
                                  SvgPicture.asset("images/contract.svg",
                                      height: 100, color: Colors.indigoAccent),
                                  Text(
                                    'ውል ማቋረጥ',
                                    style: cardTextStyle,
                                  ),
                        
                                  //],
                                ]),
                            // onTap: () => Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //     builder: (context) => TermContServScreen(),
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
                                  SvgPicture.asset("images/water-lab.svg",
                                      height: 100, color: Colors.indigoAccent),
                                  Text(
                                    'የመስመር መበከል እና የማስተካከያ ስራ መስራት የላቦራቶሪ ምርመራ',
                                    style: cardTextStyle,
                                  ),
                        
                                  //],
                                ]),
                            // onTap: () => Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //     builder: (context) => LinePolServScreen(),
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
                                      height: 100, color: Colors.indigoAccent),
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
                                      height: 100, color: Colors.indigoAccent),
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
                                  SvgPicture.asset("images/water-bono.svg",
                                      height: 100, color: Colors.indigoAccent),
                                  Text(
                                    'የመንግስት የውሃ መስመር ጥገና ',
                                    style: cardTextStyle,
                                  ),

                                  //],
                                ]),
                            // onTap: () => Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //     builder: (context) => GovMaintServScreen(),
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
                                      height: 100, color: Colors.indigoAccent),
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
                                      height: 100, color: Colors.indigoAccent),
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
                                      height: 100, color: Colors.indigoAccent),
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
                                      height: 100, color: Colors.indigoAccent),
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
                                      height: 100, color: Colors.indigoAccent),
                                  Text(
                                    'የፍሳሽ መስመር ማዛወር',
                                    style: cardTextStyle,
                                  ),

                                  //],
                                ]),
                            // onTap: () => Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //     builder: (context) => SewerLineShifServScreen(),
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
                                  SvgPicture.asset("images/mid-sew.svg",
                                      height: 100, color: Colors.indigoAccent),
                                  Text(
                                    'የመለስተኛ የፍሳሽ መስመር ዝርጋታ',
                                    style: cardTextStyle,
                                  ),

                                  //],
                                ]),
                            // onTap: () => Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //     builder: (context) => SewerMidConServScreen(),
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
                                  SvgPicture.asset("images/no-water.svg",
                                      height: 100, color: Colors.indigoAccent),
                                  Text(
                                    'ህገ-ወጥ ቅጥያ ክትትል ',
                                    style: cardTextStyle,
                                  ),

                                  //],
                                ]),
                            // onTap: () => Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //     builder: (context) => SewerIlgServScreen(),
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
                                  SvgPicture.asset("images/manhole.svg",
                                      height: 100, color: Colors.indigoAccent),
                                  Text(
                                    'ማንሆሎችን ማጽዳት ግሬስ ማድረግ እና መለያ መስጠት',
                                    style: cardTextStyle,
                                  ),

                                  //],
                                ]),
                            // onTap: () => Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //     builder: (context) => ManhoClenServScreen(),
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
                                  SvgPicture.asset("images/manhole.svg",
                                      height: 100, color: Colors.indigoAccent),
                                  Text(
                                    'የማንሆል ከፍታ ማስተካከል',
                                    style: cardTextStyle,
                                  ),

                                  //],
                                ]),
                            // onTap: () => Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //     builder: (context) => ManhoHigServScreen(),
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
