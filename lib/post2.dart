// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
//import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:http/http.dart' as http;
//import 'package:html/parser.dart' as parser;
//import 'package:html/dom.dart' as dom;
import 'package:url_launcher/url_launcher.dart';

class NewsPost extends StatefulWidget {
  @override
  _NewsPostState createState() => _NewsPostState();
}

class _NewsPostState extends State<NewsPost> {
  List<String> title = [];
  List<String> post = [];
  List<String> link = [];
  List<String> imag = [];
  // void _getData() async {
  //   final response =
  //       await http.Client().get(Uri.parse('https://aawsa.gov.et/news/'));
  //   dom.Document document = parser.parse(response.body);
  //   final elements = document.getElementsByClassName('entry-title');
  //   final element2 = document.getElementsByClassName('post-content');
  //   final linkElemnt = document.getElementsByClassName('entry-title');
  //   final imageElement =
  //       document.getElementsByClassName('et_pb_image_container');
  //   setState(() {
  //     title = elements
  //         .map((element) => element.getElementsByTagName("a")[0].innerHtml)
  //         .toList();
  //     post = element2
  //         .map((element) => element.getElementsByTagName("div")[0].innerHtml)
  //         .toList();
  //     link = linkElemnt
  //         .map((element) =>
  //             element.getElementsByTagName("a")[0].attributes['href'] ?? '')
  //         .toList();
  //     imag = imageElement
  //         .map((element) =>
  //             element.getElementsByTagName("img")[0].attributes['src'] ?? '')
  //         .toList();
  //   });
  // }

  @override
  // ignore: must_call_super
  void initState() {
    //_getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.lightBlue,
          title: Text(
            "ዜና",
            style: TextStyle(

                //fo
                ),
          ),
        ),
  //       backgroundColor: Colors.grey[300],
  //       body: post.length == 0
  //           ? Text("ዜና በመፈለግ ላይ......",
  //               style: TextStyle(
  //                   fontWeight: FontWeight.bold,
  //                   fontSize: 28,
  //                   color: Colors.black38))
  //           : ListView.builder(
  //               itemCount: post.length,
  //               itemBuilder: (context, index) {
  //                 return AnimationConfiguration.staggeredList(
  //                   position: index,
  //                   duration: const Duration(milliseconds: 375),
  //                   child: SlideAnimation(
  //                     verticalOffset: 50.0,
  //                     child: FadeInAnimation(
  //                       child: GestureDetector(
  //                         onTap: () async {
  //                           dynamic url = link[index];
  //                           if (await canLaunch(url))
  //                             launch(url);
  //                           else {
  //                             print('error');
  //                           }
  //                         },
  //                         child: Padding(
  //                           padding: const EdgeInsets.all(8.0),
  //                           child: Card(
  //                             child: Container(
  //                               color: Colors.black87,
  //                               child: Column(
  //                                 children: <Widget>[
  //                                   Container(
  //                                     child: Image.network(
  //                                       imag[index],
  //                                       scale: 0.1,
  //                                     ),
  //                                   ),
  //                                   Align(
  //                                     alignment: Alignment.centerLeft,
  //                                     child: Text(
  //                                       title[index],
  //                                       style: TextStyle(
  //                                         fontWeight: FontWeight.bold,
  //                                         color: Colors.blueAccent,
  //                                         fontSize: 20,
  //                                       ),
  //                                     ),
  //                                   ),
  //                                   SizedBox(height: 15),
  //                                   Text(
  //                                     post[index],
  //                                     style: TextStyle(
  //                                       color: Colors.white,
  //                                     ),
  //                                   ),
  //                                   Row(
  //                                     children: [
  //                                     TextButton(
  //                                         //  shape: RoundedRectangleBorder(
  //                                              // borderRadius:
  //                                                //   BorderRadius.circular(1.0),
  //                                             //  side: BorderSide(
  //                                                //   color: Colors.white)),
  //                                           onPressed: () async {
  //                                             dynamic url = link[index];
  //                                             if (await canLaunch(url))
  //                                               launch(url);
  //                                             else {
  //                                               print('error');
  //                                             }
  //                                           },
  //                                           child: Text(
  //                                             "የበለጠ ያግኙ",
  //                                             style: TextStyle(
  //                                                 color: Colors.amber),
  //                                           )),
  //                                     ],
  //                                   ),
  //                                 ],
  //                               ),
  //                             ),
  //                           ),
  //                         ),
  //                       ),
  //                     ),
  //                   ),
  //                 );
  //               },
  //             ));
  // }
    );
  }
}
