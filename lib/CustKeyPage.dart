import 'dart:io';
import 'package:flutter/material.dart';
import 'package:progress_state_button/iconed_button.dart';
import 'package:progress_state_button/progress_button.dart';
import 'network2.dart';
import 'post.dart';

void main() {
  HttpOverrides.global = new MyHttpOverrides();
  runApp(FindCustKey());
}

class FindCustKey extends StatefulWidget {
  // final AppBar appBar;

  //FindCustKey({Key key, @required this.appBar}) : super(key: key);
  //MyApp({Key key}) : super(key: key);

  @override
  _FindCustKeyState createState() => _FindCustKeyState();
}

class _FindCustKeyState extends State<FindCustKey> {
  TextEditingController postNum = TextEditingController();

  bool pressed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
//          appBar: widget.appBar,
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.lightBlue,
        title: Text(
          "የደንበኝነት ቁጥሮን ማግኛ",
          style: TextStyle(

              //fo
              ),
        ),
      ),
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
              child: Text(
                'በውል ቁጥሮ የደንበኛ ቁጥሮን ይፈልጉ',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          //  Padding(padding: EdgeInsets.all(5)),
          //Text('በውል ቁጥሮ የደንበኛ ቁጥሮን ይፈልጉ ',style: TextStyle(
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
                hintText: "እባክሆን ውል ቁጥሮን ያስገቡ",
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
                    text: "ፈልግል",
                    icon: Icon(Icons.search, color: Colors.white),
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
              state: ButtonState.success),
          // update button if we need it return it
          //RaisedButton(child: Text("ፈልግ"),
          //onPressed: () => {setState(() {
          //  pressed = true;
          // fetchData(postNum);
          //},),
          //},

          //),

          pressed ? fetchData(postNum) : SizedBox(),
        ],
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
    padding: const EdgeInsets.all(35.0),
    child: Column(
      children: <Widget>[
        Padding(padding: EdgeInsets.all(5)),
        Card(
          child: InkWell(
            splashColor: Colors.black.withAlpha(30),
            //child: const SizedBox(
            //width: 300,
            //height: 100,
            highlightColor: Colors.amber,
            child: Text(
              "ስም : " + snapshot.data.name,
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
              ),
            ),
          ),
        ),
        //Text("Name : " + snapshot.data.name, style: TextStyle(fontSize: 15)),
        Padding(padding: EdgeInsets.all(5)),
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
        ),
        // Text("Branch : " + snapshot.data.branch, style: TextStyle(fontSize: 15)),
        Padding(padding: EdgeInsets.all(5)),
        //Text("charge_group : " + snapshot.data.charge_group, style: TextStyle(fontSize: 15)),
        Card(
          child: InkWell(
            splashColor: Colors.black.withAlpha(30),
            //child: const SizedBox(
            //width: 300,
            //height: 100,
            highlightColor: Colors.amber,
            child: Text(
              "የደንበኛ ቁጥር : " + snapshot.data.cus_key,
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
              ),
            ),
          ),
        ),
        Padding(padding: EdgeInsets.all(5)),
        // Text("cust_key : " + snapshot.data.cus_key, style: TextStyle(fontSize: 15)),
        Card(
          child: InkWell(
            splashColor: Colors.black.withAlpha(30),
            //child: const SizedBox(
            //width: 300,
            //height: 100,
            highlightColor: Colors.amber,
            child: Text(
              "የውል ቁጥር : " + snapshot.data.contract_no,
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
              ),
            ),
          ),
        ),
        Padding(padding: EdgeInsets.all(5)),
      ],
    ),
  );
}

@override
// ignore: missing_return
Widget build(BuildContext context) {
  return Container();
}

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}
