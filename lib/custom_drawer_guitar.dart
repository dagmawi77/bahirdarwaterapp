import 'dart:math' as math;
import 'package:bahirdarwaterapp/payment.dart';
import 'package:flutter/material.dart';
import 'CustKeyPage.dart';
import 'GetLocationWidget.dart';
import 'info.dart';
import 'customerFeed.dart';
import 'userDuity.dart';
//import 'payment.dart';
import 'research.dart';
//import 'news.dart';
import 'post2.dart';

class CustomGuitarDrawer extends StatefulWidget {
  final Widget child;

  const CustomGuitarDrawer({required Key key, required this.child}) : super(key: key);

  static CustomGuitarDrawerState? of(BuildContext context) =>
      context.findAncestorStateOfType<CustomGuitarDrawerState>();

  @override
  CustomGuitarDrawerState createState() => new CustomGuitarDrawerState();
}

class CustomGuitarDrawerState extends State<CustomGuitarDrawer>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  bool _canBeDragged = false;
  final double maxSlide = 300.0;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 250),
    );
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  void toggle() => animationController.isDismissed
      ? animationController.forward()
      : animationController.reverse();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onHorizontalDragStart: _onDragStart,
      onHorizontalDragUpdate: _onDragUpdate,
      onHorizontalDragEnd: _onDragEnd,
      behavior: HitTestBehavior.translucent,
      onTap: toggle,
      child: AnimatedBuilder(
        animation: animationController,
        builder: (context, _) {
          return Material(
            color: Colors.blueGrey,
            child: Stack(
              children: <Widget>[
                Transform.translate(
                  offset: Offset(maxSlide * (animationController.value - 1), 0),
                  child: Transform(
                    transform: Matrix4.identity()
                      ..setEntry(3, 2, 0.001)
                      ..rotateY(math.pi / 2 * (1 - animationController.value)),
                    alignment: Alignment.centerRight,
                    child: MyDrawer(),
                  ),
                ),
                Transform.translate(
                  offset: Offset(maxSlide * animationController.value, 0),
                  child: Transform(
                    transform: Matrix4.identity()
                      ..setEntry(3, 2, 0.001)
                      ..rotateY(-math.pi * animationController.value / 2),
                    alignment: Alignment.centerLeft,
                    child: widget.child,
                  ),
                ),
                Positioned(
                  top: 4.0 + MediaQuery.of(context).padding.top,
                  left: 4.0 + animationController.value * maxSlide,
                  child: IconButton(
                    icon: Icon(Icons.menu),
                    onPressed: toggle,
                    color: Colors.white,
                  ),
                ),
                Positioned(
                  top: 16.0 + MediaQuery.of(context).padding.top,
                  left: animationController.value *
                      MediaQuery.of(context).size.width,
                  width: MediaQuery.of(context).size.width,
                  child: Center(child:Text(
                    'አዲስ አበባ ውሃ እና ፍሳሽ ባለስልጣን',
                    style: TextStyle(backgroundColor: Colors.lightBlue,fontSize: 20.20,fontWeight: FontWeight.bold),
                    //backgroundColor: Colors.lightBlue,
                    //TextStyle(),

                    //  style: Theme.of(context).primaryTextTheme.title,
                    textAlign: TextAlign.center,
                  ),),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  void _onDragStart(DragStartDetails details) {
    bool isDragOpenFromLeft = animationController.isDismissed;
    bool isDragCloseFromRight = animationController.isCompleted;
    _canBeDragged = isDragOpenFromLeft || isDragCloseFromRight;
  }

  void _onDragUpdate(DragUpdateDetails details) {
    if (_canBeDragged) {
      double delta = details.primaryDelta! / maxSlide;
      animationController.value += delta;
    }
  }

  void _onDragEnd(DragEndDetails details) {
    //I have no idea what it means, copied from Drawer
    double _kMinFlingVelocity = 365.0;

    if (animationController.isDismissed || animationController.isCompleted) {
      return;
    }
    if (details.velocity.pixelsPerSecond.dx.abs() >= _kMinFlingVelocity) {
      double visualVelocity = details.velocity.pixelsPerSecond.dx /
          MediaQuery.of(context).size.width;

      animationController.fling(velocity: visualVelocity);
    } else if (animationController.value < 0.5) {
      animationController.reverse();
    } else {
      animationController.forward();
    }
  }
}

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 280,
      height: double.infinity,
      child: Material(
        color: Colors.blue,
        child: SafeArea(
          child: Theme(
            data: ThemeData(brightness: Brightness.dark),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                 Image.asset(
                  'assets/AAWSA_logo_1.png',
                  width: 160,
                ),

                 ListTile(
                    leading: Icon(Icons.work, color: Colors.amber),
                    title: Text('አገልግሎት እና የደንበኛው ግዴታ'),
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => UserDuity()),
                      );
                    }),
                    ListTile(
                    leading: Icon(
                      Icons.history,
                      color: Colors.amber,
                    ),
                    title: Text('አስተያየት፤ቅሬታ፤ጥቆማ'),
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => CustomerFeed()),
                      );
                    }),
                
                ListTile(
                    leading: Icon(Icons.map, color: Colors.amber),
                    title: Text('አገልግሎት መጠየቂያ'),
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => MyApp()),
                      );
                    }),
                    ListTile(
                    leading: Icon(Icons.find_in_page, color: Colors.amber),
                    title: Text('የደንበኛ መለያ ያግኙ'),
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => FindCustKey()),
                      );
                    }),
               ListTile(
                    leading: Icon(
                      Icons.design_services,
                      color: Colors.amber,
                    ),
                    title: Text('ስልክ እና አስፈላጊ መረጃዎች'),
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => InfoPage(key: UniqueKey())),
                      );
                    }), 

                    // ListTile(
                    // leading: Icon(Icons.payment, color: Colors.amber),
                    // title: Text('ቢል መክፈያ'),
                    // onTap: () {
                    //   Navigator.of(context).push(
                    //     MaterialPageRoute(builder: (context) => Payment(key: UniqueKey())),
                    //   );
                    // }),
                     ListTile(
                    leading: Icon(
                      Icons.question_answer,
                      color: Colors.amber,
                    ),
                    title: Text('የዳሰሳ ጥናት'),
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => research()),
                      );
                    }),
                     ListTile(
                    leading: Icon(Icons.work, color: Colors.amber),
                    title: Text('ዜና'),
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => NewsPost()),
                      );
                    }),
               
              ],
            ),
          ),
        ),
      ),
    );
  }
}
