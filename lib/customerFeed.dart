import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
// Next Step
// import 'suggestion.dart';
// import 'complient.dart';
// import 'comment.dart';

void main() {
  runApp(CustomerFeed());
}

class CustomerFeed extends StatefulWidget {
  @override
  _CustomerFeedState createState() => _CustomerFeedState();
  // @override
  //State<StatefulWidget> createState() {
  //throw UnimplementedError();

}

// location

//class _CustomerFeedState extends State<CustomerFeed> {
// function for getting the current location
// but before that you need to add this permission!

//}
// function for opening it in google maps
class _CustomerFeedState extends State<CustomerFeed> {
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
          "አስተያየት ቅሬታ ጥቆማ",
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
                          children: <Widget>[],
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
                                  SvgPicture.asset("images/suggestion.svg",
                                      height: 128, color: Colors.indigoAccent),
                                  Text(
                                    'ጥቆማ',
                                    style: cardTextStyle,
                                  ),

                                  //],
                                ]),
                            // onTap: () => Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //       builder: (context) => MyHomePage(
                            //         key: Key('myHomePage'),
                            //         title: 'My Home Page',
                            //       )),
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
                                  SvgPicture.asset("images/complaint.svg",
                                      height: 128, color: Colors.indigoAccent),
                                  Text(
                                    'ቅሬታ',
                                    style: cardTextStyle,
                                  ),

                                  //],
                                ]),
                            // onTap: () => Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //     builder: (context) => Complient(
                            //       key: Key('complient'),
                            //       title: 'Complient',
                            //     ),
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
                                  SvgPicture.asset("images/comment2.svg",
                                      height: 128, color: Colors.indigoAccent),
                                  Text(
                                    'አስተያየት',
                                    style: cardTextStyle,
                                  ),

                                  //],
                                ]),
                            // onTap: () => Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //     builder: (context) => Comment(
                            //       key: Key('comment'),
                            //       title: 'Comment',
                            //     ),
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
