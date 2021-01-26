import 'package:between_earth_and_paradise/Globals/globalVariables.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'startpage.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Color _colour = Colors.white;

  updateColour() {
    Future.delayed(const Duration(milliseconds: 500), () {
      setState(() {
        _colour = Colors.grey[900];
      });
    });
  }

  checkProgress() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if (prefs.getInt('currentProgress') != null) {
      storyNumberIndex = prefs.getInt('currentProgress');
    }

    if (prefs.getBool('isComplete') == true) {
      isComplete = true;
    } else {
      isComplete = false;
    }

    if (prefs.getBool('audioEnabled') != null) {
      audioEnabled = prefs.getBool('audioEnabled');
    }

    currentCharacter = prefs.getString('currentCharacter');
  }

  @override
  void initState() {
    checkProgress();
    updateColour();
    Future.delayed(const Duration(milliseconds: 8000), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => StartPage(),
          ));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: SafeArea(
        child: Scaffold(
          body: Stack(
            children: [
              Container(
                child: Column(
                  children: [
                    Expanded(
                      child: Container(
                        color: Colors.grey[900],
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.8,
                      height: MediaQuery.of(context).size.height * 0.3,
                      child: AnimatedContainer(
                        color: _colour,
                        duration: Duration(seconds: 5),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        color: Colors.grey[900],
                      ),
                    ),
                  ],
                ),
              ),
              Center(
                child: SizedBox(
                  child: TextLiquidFill(
                    loadDuration: Duration(seconds: 7),
                    waveDuration: Duration(seconds: 2),
                    text: 'half-full games',
                    waveColor: Colors.grey[900],
                    boxBackgroundColor: Colors.grey[900],
                    textAlign: TextAlign.center,
                    textStyle: GoogleFonts.chilanka(
                      color: Colors.white,
                      fontSize: MediaQuery.of(context).size.width * 0.15,
                      fontWeight: FontWeight.bold,
                    ),
                    boxWidth: MediaQuery.of(context).size.width,
                    boxHeight: MediaQuery.of(context).size.height * 0.33,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
