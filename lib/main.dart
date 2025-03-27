import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'home_page.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.dark.copyWith(statusBarColor: Colors.transparent),
    );

    return MaterialApp(
      title: 'Introduction screen',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: OnBoardingPage(),
    );
  }
}

class OnBoardingPage extends StatefulWidget {
  @override
  _OnBoardingPageState createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => HomePage()),
    );
  }

  Widget _buildFullscreenImage() {
    return Image.asset(
      'assets/aawsa_bu.jpg',
      fit: BoxFit.cover,
      height: double.infinity,
      width: double.infinity,
      alignment: Alignment.center,
    );
  }

  Widget _buildImage(String assetName, [double width = 350]) {
    return Image.asset('assets/$assetName', width: width);
  }

  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(fontSize: 19.0);

    const pageDecoration = const PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
      bodyTextStyle: bodyStyle,
      bodyPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );

    return IntroductionScreen(
      key: introKey,
      globalBackgroundColor: Colors.white,
      globalHeader: Align(
        alignment: Alignment.topRight,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 16, right: 16),
            child: _buildImage('AAWSA_logo_1.png', 100),
          ),
        ),
      ),
      // globalFooter: SizedBox(
      //   width: double.infinity,
      //   height: 60,
      //   child: ElevatedButton(
      //     child: const Text(
      //       'Let\'s go right away!',
      //       style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
      //     ),
      //     onPressed: () => _onIntroEnd(context),
      //   ),
      // ),
      pages: [
        PageViewModel(
          title: "ዛሬ የቆጠቡት ውሃ ለነገ መሰረት ነው፡፡",
          body:
          "ዛሬ የቆጠቡት ውሃ ለነገ መሰረት ነው፡፡ ስለዚህ ውሃ አላቂ ሃብት እንደሆነ ተገንዝበው ውሃን ይንከባከቡ፡፡",
          image: _buildImage('images/image4.png'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "በመተግበሪያው ጥቆማ፤አስተያየት፤ቅሬታዎን ያድርሱን፡፡",
          body:
          "በዚሀ መተግበሪያ ጥቆማ ፤ አስተያየት፤ቅሪታዎን መላክ ይችላሉ፡፡እንዲሁም የቢል መረጃዎን ማኘት ይችላሉ፡፡",
          image: _buildImage('images/image5.png'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "ስለመስራ ቤቱ በቂ መረጃ ያግኙ",
          body:
          "በመተግበሪያው ከተቁዋሙ የሚወጡ አዳዲስ መረጃዎችን ያግኙ፡፡ ፈረቃዎን ይከታተሉ፡፡",
          image: _buildImage('images/aawsa.png'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "ሌላ መልክት",
          body:
          "መተግበሪያውን በመጠቀም ስለ መስራቤቱ በቄ የሆነ መረጃ ማግኘት ይችላሉ፡፡",
          image: _buildFullscreenImage(),
          decoration: pageDecoration.copyWith(
            contentMargin: const EdgeInsets.symmetric(horizontal: 16),
            fullScreen: true,
            bodyFlex: 2,
            imageFlex: 3,
          ),
        ),
        // PageViewModel(
        //   title: "Another title page",
        //   body: "Another beautiful body text for this example onboarding",
        //   image: _buildImage('img2.jpg'),
        //   footer: ElevatedButton(
        //     onPressed: () {
        //       introKey.currentState?.animateScroll(0);
        //     },
        //     child: const Text(
        //       'FooButton',
        //       style: TextStyle(color: Colors.white),
        //     ),
        //     style: ElevatedButton.styleFrom(
        //       primary: Colors.lightBlue,
        //       shape: RoundedRectangleBorder(
        //         borderRadius: BorderRadius.circular(8.0),
        //       ),
        //     ),
        //   ),
        //   decoration: pageDecoration,
        // ),
        PageViewModel(
          title: "እንካን ወደ አዲስ አበባ ውሃ እና ፍሳሽ በሰላም መጡ፡፡",
          bodyWidget: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text("ሰላሙ ይብዛላቹ", style: bodyStyle),
              Text(" መልካም ቆይታ፡፡", style: bodyStyle),
            ],
          ),
          decoration: pageDecoration.copyWith(
            bodyFlex: 2,
            imageFlex: 4,
            bodyAlignment: Alignment.bottomCenter,
            imageAlignment: Alignment.topCenter,
          ),
          image: _buildImage('aawsa_bu.jpg'),
          reverse: true,
        ),
      ],
      onDone: () => _onIntroEnd(context),
      //onSkip: () => _onIntroEnd(context), // You can override onSkip callback
      showSkipButton: false,
      skipOrBackFlex: 0,
      nextFlex: 0,
      showBackButton: true,
      //rtl: true, // Display as right-to-left
      back: const Icon(Icons.arrow_back),
      skip: const Text('መልክቱን እለፍ', style: TextStyle(fontWeight: FontWeight.w600)),
      next: const Icon(Icons.arrow_forward),
      done: const Text('ተጠናቁዋል', style: TextStyle(fontWeight: FontWeight.w600)),
      curve: Curves.fastLinearToSlowEaseIn,
      controlsMargin: const EdgeInsets.all(16),
      controlsPadding: kIsWeb
          ? const EdgeInsets.all(12.0)
          : const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
      dotsDecorator: const DotsDecorator(
        size: Size(10.0, 10.0),
        color: Color(0xFFBDBDBD),
        activeSize: Size(22.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
      dotsContainerDecorator: const ShapeDecoration(
        color: Colors.black87,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyApp();
  }
}
