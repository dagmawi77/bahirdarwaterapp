import 'package:flutter/material.dart';
import 'dart:async';
import 'package:ussd_advanced/ussd_advanced.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';

//import 'package:ussd/ussd.dart';

//void main() => runApp(Payment());

class Payment extends StatefulWidget {
  @override
  _PaymentState createState() => _PaymentState();
  const Payment({required key}) : super(key: key);
}

var custKey;

// ignore: camel_case_types
class _PaymentState extends State<Payment> {
  late TextEditingController _controller;
  //String _response;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Future<void> launchUssd(String ussdCode) async {
    //Ussd.runUssd(ussdCode);
  }

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
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.lightBlue,
        title: Text(
          "ቢል መክፈያ ",
          style: TextStyle(

              //fo
              ),
        ),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height * .3,
            decoration: BoxDecoration(),
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
                                  SvgPicture.asset("images/pay2.svg",
                                      height: 128, color: Colors.indigoAccent),
                                  Text(
                                    'በ CBE ይክፈሉ',
                                    style: cardTextStyle,
                                  ),

                                  //],
                                ]),
                            onTap: () {
                              UssdAdvanced.sendUssd(
                                  code: "*804#", subscriptionId: 1);
                            },
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
                                  SvgPicture.asset("images/pay1.svg",
                                      height: 128, color: Colors.indigoAccent),
                                  Text(
                                    'በ CBE BIRR ይክፈሉ',
                                    style: cardTextStyle,
                                  ),

                                  //],
                                ]),
                            onTap: () {
                              UssdAdvanced.sendUssd(
                                  code: "*847#", subscriptionId: 1);
                            },
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
      //Column(
        //mainAxisSize: MainAxisSize.max,
        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //children: [
          //ElevatedButton(
            //onPressed: () {
              //UssdAdvanced.sendUssd(code: "*804#", subscriptionId: 1);
            //},
            //child: const Text('pay with CBE'),
            //style: ElevatedButton.styleFrom(
              //  primary: Colors.lightBlueAccent,
                //fixedSize: const Size(300, 100),
                //shape: RoundedRectangleBorder(
                  //  borderRadius: BorderRadius.circular(50))),
          //),
          //Padding(
            //padding: EdgeInsets.all(8.0),
            // child: Text('Hello World2!'),
         // ),
          //ElevatedButton(
            //onPressed: () async {
              //var _res = await UssdAdvanced.sendAdvancedUssd(
                //  code: "*847*5*2*878787#", subscriptionId: 1);
              //setState(() {
                //_response = _res;
              //});
           // },
            //child: const Text('pay with CBE BIRR'),
            //style: ElevatedButton.styleFrom(
              //  primary: Colors.deepOrange,
                //fixedSize: const Size(300, 100),
                //shape: RoundedRectangleBorder(
                  //  borderRadius: BorderRadius.circular(50))),
          //),
        //],
     
