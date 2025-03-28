// ignore_for_file: missing_required_param

import 'dart:io';
//import 'package:covid_tracker/pages/screens/home_screen.dart';
//import 'package:drawer_challenge/utils/margin.dart';

import 'theme/color/light_color.dart';
import 'custom_drawer_guitar.dart';
import 'package:flutter/material.dart';
import 'package:progress_state_button/iconed_button.dart';
import 'package:progress_state_button/progress_button.dart';
import 'custom_drawer.dart';
import 'network.dart';
import 'post.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';
import 'CustKeyPage.dart';
//import 'package:bloc/bloc.dart';
import 'payment.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
//import 'package:flutter_bloc/flutter_bloc.dart';
//import 'package:circular_bottom_navigation/tab_item.dart';
//import 'package:circular_bottom_navigation/circular_bottom_navigation.dart';

void main() {
  HttpOverrides.global = new MyHttpOverrides();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool flip = true;
    //resizeToAvoidBottomPadding: false,
    AppBar appBar = flip
        ? AppBar()
        : AppBar(
            leading: Builder(
              builder: (context) {
                return IconButton(
                  icon: Icon(Icons.menu),
                  onPressed: () => CustomDrawer.of(context)?.open(),
                );
              },
            ),
            title: Text('Wellcome to AAWSA APP'),
            
          );
    // Widget child = MyHomePage(appBar: appBar, key: null,);
    // if (flip) {
    //  // child = CustomGuitarDrawer(child: child);
    // } else {
    // //  child = CustomDrawer(child: child);
    // }
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //title: 'Flutter Demo',
      theme: ThemeData(
        // scaffoldBackgroundColor: Colors.lightBlue,
        scaffoldBackgroundColor: Colors.grey[300],
        primarySwatch: Colors.lightBlue,
      ),
     // home: child,
    );
  }
}

void pageChanged(int index) {}

class MyHomePage extends StatefulWidget {
  final AppBar appBar;

  MyHomePage({required Key key, required this.appBar}) : super(key: key);
  //MyApp({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController postNum = TextEditingController();

  int selectedIndex = 0;

  //void addPostFrameCallback(FrameCallback callback) {
  // Load data on widget load
  //print('relad?');
  //BlocProvider.of<CaseBloc>(context).add(FetchCase());
  //}

  //PageController pageController = PageController(
  //initialPage: 0,
  //keepPage: true,
  //);
  PageController pageController = PageController(
    initialPage: 0,
    keepPage: true,
  );

  Widget buildPageView() {
    return PageView(
      controller: pageController,
      onPageChanged: (index) {
        pageChanged(index);
      },
      children: <Widget>[
        //MyHomePage(appBar: app, key: null,),
        FindCustKey(),
        Payment(key: null,),
        //NewsPage(),
        //InformationScreen(),
        //infoPage(),
        //SettingsPage(),
      ],
    );
  }

  void pageChanged(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  void bottomTapped(int index) {
    setState(() {
      selectedIndex = index;
      pageController.animateToPage(index,
          duration: Duration(milliseconds: 500), curve: Curves.ease);
    });
  }

  bool pressed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: widget.appBar,
      //   SingleChildScrollView(child: body()),
      body: Column(
        // height: size.height * .40,

        children: <Widget>[
          Card(
            color: Colors.amberAccent,
            child: InkWell(
              splashColor: Colors.black.withAlpha(30),

              //child: const SizedBox(
              //width: 300,
              //height: 100,
              
            //style: const TextStyle(
              //fontSize: 30.0,
             // fontFamily: 'Bobbers',
            //),
           child: SizedBox(
          width:500,
          child: DefaultTextStyle(
            style: const TextStyle(
              fontSize: 22,
              fontFamily: 'Bobbers',
            ),
              child:
              AnimatedTextKit (
                animatedTexts:[
                  //TyperAnimatedText alternative
                  TypewriterAnimatedText('የደንበኛ ቁጥሮን በማስገባት ምን ያህል እንደቆጠረቦት ይወቁ ',cursor:'*',
                  //style: TextStyle(
                  //color: Colors.black,
                  //fontSize: 25,
                  //fontWeight: FontWeight.bold,
               // ),
                ),
                  ],
                  ),
                  ),
                  
                
                
              ),
            ),
          ), //),

          //  AnimatedTextKit(
          //     animatedTexts: [
          //       TypewriterAnimatedText('Discipline is the best tool'),
          //       TypewriterAnimatedText('Design first, then code', cursor: '|'),
          //       TypewriterAnimatedText('Do not patch bugs out, rewrite them',
          //           cursor: '<|>'),
          //       TypewriterAnimatedText('Do not test bugs out, design them out',
          //           cursor: '💡'),
          //     ],),
          //
          //Padding(padding: EdgeInsets.all(5)),
          //Text('የደንበኛ ቁጥሮን በማስገባት ምን ያህል እንደቆጠረቦት ይወቁ',style: TextStyle(
          //color:Colors.red,
          //backgroundColor: Colors.black,
          //fontSize: 26,
          //),),
          Padding(padding: EdgeInsets.all(5)),
          Container(
            padding: EdgeInsets.all(10),
            //padding:EdgeInsets.symmetric(horizontal:25,vertical:5),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(15)),
            child: TextField(
              controller: postNum,
              decoration: InputDecoration(
                hintText: "እባክሆን የመከፈያ ቁጥሮን ያስገቡ",
                border: InputBorder.none,
                //hoverColor: Colors.cyan,
                //focusColor: Colors.red,
                //fillColor: Color.fromARGB(100, 150, 0, 0)
              ),
            ),
          ),
          Padding(padding: EdgeInsets.all(5)),

          ProgressButton.icon(
              iconedButtons: {
                ButtonState.idle: IconedButton(
                    text: "ፈልግ",
                    icon: Icon(Icons.search, color: Colors.white),
                    color: Colors.deepPurple.shade500),
                ButtonState.loading: IconedButton(
                    text: "በመፈለግ ላይ", color: Colors.deepPurple.shade700),
                ButtonState.fail: IconedButton(
                    text: "ማግኘት አልቻልም",
                    icon: Icon(Icons.cancel, color: Colors.white),
                    color: Colors.red.shade300),
                ButtonState.success: IconedButton(
                    text: "ፍለጋው ተሳከቱዋል",
                    icon: Icon(
                      Icons.check_circle,
                      color: Colors.white,
                    ),
                    color: Colors.green.shade400)
              },
              //onPressed: onPressed,
              onPressed: () => {
                    setState(
                      () {
                        pressed = true;
                        fetchData(postNum);

                      },
                    ),
                  },
              state: ButtonState.idle),
          // update button if we need it return it
          //RaisedButton(child: Text("ፈልግ"),
          //onPressed: () => {setState(() {
          //  pressed = true;
          // fetchData(postNum);
          //},),
          //},

          //),

          pressed ? fetchData(postNum) : SizedBox(),
          //const YMargin(10),
          // Expanded(child: buildPageView()),
        ],
      ),
      //resizeToAvoidBottomInset: false,
      bottomNavigationBar: Container(
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(blurRadius: 20, color: Colors.black.withOpacity(.1))
        ]),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(10).add(EdgeInsets.only(top: 5)),
            child: GNav(
              gap: 10,
              activeColor: Colors.white,
              color: Colors.grey[400],
              iconSize: 20,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              duration: Duration(milliseconds: 800),
            //  tabBackgroundColor: Colors.grey[800],
              tabs: [
                GButton(
                  icon: LineIcons.home,
                  text: 'መነሻ',
                  backgroundColor: CardColors.red,
                ),
                GButton(
                  icon: LineIcons.newspaper,
                  text: 'ዜና',
                  backgroundColor: CardColors.cyan,
                ),
                GButton(
                  icon: LineIcons.listUl,
                  text: 'ፈረቃ',
                  backgroundColor: CardColors.blue,
                ),
                GButton(
                  icon: LineIcons.book,
                  text: 'ስለኛ',
                  backgroundColor: CardColors.cyan,
                ),
              ],
              selectedIndex: selectedIndex,
              onTabChange: (index) {
                setState(
                  () {
                     // pageController.jumpToPage(index);
                  },
                );
              },
            ),
          ),
        ),
      ),
    );

    // ignore: dead_code
    throw UnimplementedError();
  }
}

FutureBuilder<Posts> fetchData(postNum) {
  return FutureBuilder<Posts>(
    future: fetchPosts(postNum.text.toString()),
    builder: (context, snapshot) {
      if (snapshot.hasData) {
        return getData(snapshot);
      } else if (snapshot.hasError) {
        // return Text("${snapshot.error}",
        return Text(
          "ምንም ማግኘት አልተቻለም",
          style: TextStyle(
            color: Colors.orange,
            fontSize: 25,
          ),
        );
      }

      // By default, show a loading spinner.
      return CircularProgressIndicator();
    },
  );
}

Widget getData(snapshot) {
  return Padding(
    padding: const EdgeInsets.all(5.0),
    child: Column(
      children: <Widget>[
        Card(
          child: InkWell(
            splashColor: Colors.black.withAlpha(30),
            //child: const SizedBox(
            //width: 300,
            //height: 100,
            //highlightColor: Colors.amber,

            child: Text(
              "ስም : " + snapshot.data.name,
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
              ),
            ),
          ),
        ), //)

        Padding(padding: EdgeInsets.all(1)),
        Card(
          child: InkWell(
            splashColor: Colors.black.withAlpha(30),
            //child: const SizedBox(
            //width: 300,
            //height: 100,
            highlightColor: Colors.amber,
            child: Text(
              "ቅርንጫፍ : " + snapshot.data.branch,
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
              ),
            ),
          ),
        ), //)

        //Text("Name : " + snapshot.data.name, style: TextStyle(fontSize: 15)),
        Padding(padding: EdgeInsets.all(1)),
        // Text("Branch : " + snapshot.data.branch, style: TextStyle(fontSize: 15)),
        //Padding(padding: EdgeInsets.all(5)),
        Card(
          child: InkWell(
            splashColor: Colors.black.withAlpha(30),
            //child: const SizedBox(
            //width: 300,
            //height: 100,
            highlightColor: Colors.amber,
            child: Text(
              "የደንበኛ ምድብ : " + snapshot.data.charge_group,
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
              ),
            ),
          ),
        ), //

        Padding(padding: EdgeInsets.all(1)),
        Card(
          child: InkWell(
            splashColor: Colors.black.withAlpha(30),
            //child: const SizedBox(
            //width: 300,
            //height: 100,
            highlightColor: Colors.amber,
            child: Text(
              "የቢል መጠን : " + snapshot.data.bill_amount,
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
              ),
            ),
          ),
        ),
        //Text("charge_group : " + snapshot.data.charge_group, style: TextStyle(fontSize: 15)),
        Padding(padding: EdgeInsets.all(1)),
        Card(
          child: InkWell(
            splashColor: Colors.black.withAlpha(30),
            //child: const SizedBox(
            //width: 300,
            //height: 100,
            highlightColor: Colors.amber,
            child: Text(
              "የ1 ወር ውዝፍ : " + snapshot.data.debit_30,
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
              ),
            ),
          ),
        ),
        //Text("cust_key : " + snapshot.data.cus_key, style: TextStyle(fontSize: 15)),
        //Padding(padding: EdgeInsets.all(5)),
        //Text("bill_amount : " + snapshot.data.charge_group, style: TextStyle(fontSize: 15)),
        Padding(padding: EdgeInsets.all(1)),
        Card(
          child: InkWell(
            splashColor: Colors.black.withAlpha(30),
            //child: const SizedBox(
            //width: 300,
            //height: 100,
            highlightColor: Colors.amber,
            child: Text(
              "የ2 ወር ውዝፍ : " + snapshot.data.debit_60,
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
              ),
            ),
          ),
        ),

        //Text("debit_30 : " + snapshot.data.debit_30, style: TextStyle(fontSize: 15)),
        Padding(padding: EdgeInsets.all(1)),
        Card(
          child: InkWell(
            splashColor: Colors.black.withAlpha(30),
            //child: const SizedBox(
            //width: 300,
            //height: 100,
            highlightColor: Colors.amber,
            child: Text(
              "ከ2 በላይ ውዝፍ : " + snapshot.data.debit_90,
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
              ),
            ),
          ),
        ),

        //Text("debit_60 : " + snapshot.data.debit_60, style: TextStyle(fontSize: 15)),
        Padding(padding: EdgeInsets.all(2)),
        Card(
          //color: Colors.amber
          child: InkWell(
            splashColor: Colors.black.withAlpha(30),
            //child: const SizedBox(
            //width: 300,
            //height: 100,

            child: Text(
              "ጠቅላላ ሂሳብ: " + snapshot.data.total,
              style: TextStyle(
                  color: Colors.orange,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        //Text("debit_90 : " + snapshot.data.debit_60, style: TextStyle(fontSize: 15)),

        //Padding(padding: EdgeInsets.all(5)),
        //Text("total : " + snapshot.data.total, style: TextStyle(fontSize: 15)),
      ],
    ),
  );
}

//@override
// ignore: missing_return
//Widget build(BuildContext context) {}

class MyHttpOverrides extends HttpOverrides {
  // @override
  // HttpClient createHttpClient(SecurityContext context) {
  //   return super.createHttpClient(context)
  //     ..badCertificateCallback =
  //         (X509Certificate cert, String host, int port) => true;
  // }
}


