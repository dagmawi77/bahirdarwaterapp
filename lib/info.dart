// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'utils/colors.dart';
import 'utils/text_styles.dart';
import 'utils/ui_helpers.dart';
import 'widgets/sexy_tile.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';

class InfoPage extends StatefulWidget {
  const InfoPage({required Key key}) : super(key: key);

  @override
  _InfoPageState createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage>
    with AutomaticKeepAliveClientMixin {
  List<String> itemContent = [
    'የአዲስ አበባ ወሃ እና ፍሳሽ ባለስልጣን ',
    'ቅርንጫፍ መስሪያ ቤቶች አስፈላጊ የሆኑ የስራ ክፍሎች ስልክ ቁጥሮች',
    'Credits',
    '',
  ]; //the text in the tile

  @override
  // ignore: must_call_super
  Widget build(BuildContext context) {
    //debugShowCheckedModeBanner: false,

    //title: 'አድራሻዎን ያግኙ',
    return Scaffold(
      //scaffoldBackgroundColor: Colors.lightBlue,
      //  primarySwatch: Colors.deepOrange,

      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey[300],
      //backgroundColor: Colors.white10,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.lightBlue,
        title: Text(
          "አስፈላጊ ስልክ ቁጥሮች",
          style: TextStyle(

              //fo
              ),
        ),
      ),

      body: Container(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Expanded(
              child: ListView(
                children: <Widget>[
                  SexyTile(
                    color: Colors.white,
                    //color: Colors.white,
                    //color: Colors.white,
                    //color: Colors.white,
                    //color: Colors.white,
                    //color: Colors.white,
                    onTap: () {},
                    splashColor: Colors.blue,
                    child: Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            itemContent[0],

                            style: TextStyle(
                                backgroundColor: Colors.black,
                                color: Colors.white,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold),
                            //style: HeadingStylesDefault.accent,
                            textAlign: TextAlign.center,
                            softWrap: true,
                            overflow: TextOverflow.fade,
                          ),
                          Text(
                            'የጥሪ ማእከል 906',
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                backgroundColor: Colors.transparent),
                          ),
                          IconButton(
                            icon: Icon(
                              EvaIcons.phone,
                              color: invertColorsMild(context),
                              size: 24.0,
                            ),

                            onPressed: () => launch("tel://906"),
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          Text(
                            itemContent[1],
                            style: isThemeCurrentlyDark(context)
                                ? BodyStylesDefault.white
                                : BodyStylesDefault.black,
                            textAlign: TextAlign.left,
                            softWrap: true,
                            overflow: TextOverflow.fade,
                          ),
                        ],
                      ),
                    ),
                    //splashColor: MyColors.accent, onTap: () {  },
                  ),
                  SexyTile(
                    color: Colors.white,
                    child: Padding(
                      
                      padding: EdgeInsets.all(20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            itemContent[0],

                            style: TextStyle(
                                backgroundColor: Colors.black,
                                color: Colors.white,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold),
                            //style: HeadingStylesDefault.accent,
                            textAlign: TextAlign.center,
                            softWrap: true,
                            overflow: TextOverflow.fade,
                          ),
                          Text(
                            'አቃቂ ቅርንጫፍ',
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                backgroundColor: Colors.amber),
                          ),
                          Text(
                            '0112771117',
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                backgroundColor: Colors.transparent),
                          ),
                          IconButton(
                            icon: Icon(
                              EvaIcons.phone,
                              color: invertColorsMild(context),
                              size: 24.0,
                            ),
                            onPressed: () => launch("tel://0112771117"),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              IconButton(
                                icon: Icon(
                                  EvaIcons.map,
                                  color: invertColorsMild(context),
                                  size: 24.0,
                                ),
                                onPressed: () => launch(
                                    "https://www.google.com/maps/place/%E1%8A%A0%E1%89%83%E1%89%82+%E1%89%83%E1%88%8A%E1%89%B2,+%E1%8A%A0%E1%8B%B2%E1%88%B5+%E1%8A%A0%E1%89%A0%E1%89%A3/@8.8861769,38.7833555,15.75z/data=!4m5!3m4!1s0x164b837570f9a759:0x8232b0c0b8fdf46d!8m2!3d8.8958311!4d38.7891606"),
                              ),
                              IconButton(
                                icon: Icon(
                                  EvaIcons.facebook,
                                  color: MyColors.accent,
                                  size: 26.0,
                                ),
                                onPressed: () => launchURL(
                                    'https://www.facebook.com/aawsa.addisketemabranch.7'),
                              ),
                              IconButton(
                                icon: Icon(
                                  EvaIcons.phone,
                                  color: MyColors.heart,
                                  size: 26.0,
                                ),
                                onPressed: () => launchURL('tel://0112771117'),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                        ],
                      ),
                    ),
                    splashColor: MyColors.accent, onTap: () {  },
                  ),
                  SexyTile(
                    color: Colors.white,
                    child: Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            itemContent[0],

                            style: TextStyle(
                                backgroundColor: Colors.black,
                                color: Colors.white,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold),
                            //style: HeadingStylesDefault.accent,
                            textAlign: TextAlign.center,
                            softWrap: true,
                            overflow: TextOverflow.fade,
                          ),
                          Text(
                            'አዲስ ከተማ ቅርንጫፍ',
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                backgroundColor: Colors.amber),
                          ),
                          Text(
                            '0112778247',
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                backgroundColor: Colors.transparent),
                          ),
                          IconButton(
                            icon: Icon(
                              EvaIcons.phone,
                              color: invertColorsMild(context),
                              size: 24.0,
                            ),
                            onPressed: () => launch("tel://0112778247"),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              IconButton(
                                icon: Icon(
                                  EvaIcons.map,
                                  color: invertColorsMild(context),
                                  size: 24.0,
                                ),
                                onPressed: () => launch(
                                    "https://maps.google.com/maps?q=9.045498,38.735326&ll=9.045498,38.735326&z=16"),
                              ),
                              IconButton(
                                icon: Icon(
                                  EvaIcons.facebook,
                                  color: MyColors.accent,
                                  size: 26.0,
                                ),
                                onPressed: () => launchURL(
                                    'https://www.facebook.com/aawsa.addisketemabranch.7'),
                              ),
                              IconButton(
                                icon: Icon(
                                  EvaIcons.phone,
                                  color: MyColors.heart,
                                  size: 26.0,
                                ),
                                onPressed: () => launchURL('tel://0112771117'),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                        ],
                      ),
                    ),
                    splashColor: MyColors.accent, onTap: () {  },
                  ),
                  SexyTile(
                    color: Colors.white,
                    child: Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            itemContent[0],

                            style: TextStyle(
                                backgroundColor: Colors.black,
                                color: Colors.white,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold),
                            //style: HeadingStylesDefault.accent,
                            textAlign: TextAlign.center,
                            softWrap: true,
                            overflow: TextOverflow.fade,
                          ),
                          Text(
                            'አራዳ ቅርንጫፍ',
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                backgroundColor: Colors.amber),
                          ),
                          Text(
                            '0112654312',
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                backgroundColor: Colors.transparent),
                          ),
                          IconButton(
                            icon: Icon(
                              EvaIcons.phone,
                              color: invertColorsMild(context),
                              size: 24.0,
                            ),
                            onPressed: () => launch("tel://0112654312"),
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                        ],
                      ),
                    ),
                    splashColor: MyColors.accent, onTap: () {  },
                  ),
                  SexyTile(
                    color: Colors.white,
                    child: Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            itemContent[0],

                            style: TextStyle(
                                backgroundColor: Colors.black,
                                color: Colors.white,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold),
                            //style: HeadingStylesDefault.accent,
                            textAlign: TextAlign.center,
                            softWrap: true,
                            overflow: TextOverflow.fade,
                          ),
                          Text(
                            'ጉለሌ ቅርንጫፍ',
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                backgroundColor: Colors.amber),
                          ),
                          Text(
                            '0112654343',
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                backgroundColor: Colors.transparent),
                          ),
                          IconButton(
                            icon: Icon(
                              EvaIcons.phone,
                              color: invertColorsMild(context),
                              size: 24.0,
                            ),
                            onPressed: () => launch("tel://0112654343"),
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                        ],
                      ),
                    ),
                    splashColor: MyColors.accent, onTap: () {  },
                  ),
                  SexyTile(
                    color: Colors.white,
                    child: Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            itemContent[0],

                            style: TextStyle(
                                backgroundColor: Colors.black,
                                color: Colors.white,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold),
                            //style: HeadingStylesDefault.accent,
                            textAlign: TextAlign.center,
                            softWrap: true,
                            overflow: TextOverflow.fade,
                          ),
                          Text(
                            'ጉርድ ሾላ ቅርንጫፍ',
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                backgroundColor: Colors.amber),
                          ),
                          Text(
                            '0112656521',
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                backgroundColor: Colors.transparent),
                          ),
                          IconButton(
                            icon: Icon(
                              EvaIcons.phone,
                              color: invertColorsMild(context),
                              size: 24.0,
                            ),
                            onPressed: () => launch("tel://0112656521"),
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                        ],
                      ),
                    ),
                    splashColor: MyColors.accent, onTap: () {  },
                  ),
                  SexyTile(
                    color: Colors.white,
                    child: Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            itemContent[0],

                            style: TextStyle(
                                backgroundColor: Colors.black,
                                color: Colors.white,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold),
                            //style: HeadingStylesDefault.accent,
                            textAlign: TextAlign.center,
                            softWrap: true,
                            overflow: TextOverflow.fade,
                          ),
                          Text(
                            'መገናኛ ቅርንጫፍ',
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                backgroundColor: Colors.amber),
                          ),
                          Text(
                            '0114567431',
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                backgroundColor: Colors.transparent),
                          ),
                          IconButton(
                            icon: Icon(
                              EvaIcons.phone,
                              color: invertColorsMild(context),
                              size: 24.0,
                            ),
                            onPressed: () => launch("tel://0114567431"),
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              IconButton(
                                icon: Icon(
                                  EvaIcons.map,
                                  color: invertColorsMild(context),
                                  size: 24.0,
                                ),
                                onPressed: () => launch(
                                    "https://maps.google.com/maps?q=9.045498,38.735326&ll=9.045498,38.735326&z=16"),
                              ),
                              IconButton(
                                icon: Icon(
                                  EvaIcons.facebook,
                                  color: MyColors.twitter,
                                  size: 26.0,
                                ),
                                onPressed: () => launchURL(
                                    'https://twitter.com/dagmawi_letarik'),
                              ),
                              IconButton(
                                icon: Icon(
                                  EvaIcons.linkedin,
                                  color: MyColors.twitter,
                                  size: 26.0,
                                ),
                                onPressed: () => launchURL(
                                    'https://www.linkedin.com/in/dagmawi-letarik-968159135/'),
                              ),
                              IconButton(
                                icon: Icon(
                                  EvaIcons.email,
                                  color: MyColors.heart,
                                  size: 26.0,
                                ),
                                onPressed: () => launchURL(
                                    'mailto:dagmawiletariky@gmail.com?'),
                              ),
                              SizedBox(
                                height: 20.0,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    splashColor: MyColors.accent, onTap: () {  },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        heroTag: 'fab',
        child: Icon(
          EvaIcons.wifi,
          size: 36.0,
        ),
        tooltip: 'AAWSA Website',
        foregroundColor: invertInvertColorsStrong(context),
        backgroundColor: invertColorsStrong(context),
        elevation: 5.0,
        onPressed: () => launchURL('https://aawsa.gov.et/'),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
