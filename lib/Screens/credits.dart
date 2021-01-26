import 'dart:ui';
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:between_earth_and_paradise/Globals/globalVariables.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import 'startpage.dart';

class CreditsPage extends StatefulWidget {
  @override
  _CreditsPageState createState() => _CreditsPageState();
}

class _CreditsPageState extends State<CreditsPage> {
  bool _visible = true;

  _launchURL1() async {
    const url = 'https://www.youtube.com/watch?v=yz6aruIS5TY&t=4s';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchURL2() async {
    const url = 'https://www.youtube.com/watch?v=Kwui5sD3o18';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  final audioCache = AudioCache();
  AudioPlayer player;
  play() async {
    if (audioEnabled) {
      player = await audioCache.play('ending1.mp3');
    }
  }

  stop() {
    if (audioEnabled) {
      player?.stop();
    }
  }

  @override
  void initState() {
    play();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: SafeArea(
        child: Scaffold(
          body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/background.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: ClipRRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                child: Container(
                  alignment: Alignment.center,
                  color: Colors.grey.withOpacity(0.1),
                  child: Container(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: MediaQuery.of(context).size.width * 0.05),
                      child: ListView(
                        children: [
                          AnimatedOpacity(
                            opacity: _visible ? 1.0 : 0.0,
                            duration: Duration(milliseconds: 500),
                            child: Column(
                              children: [
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.9,
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      top: MediaQuery.of(context).size.height *
                                          0.12,
                                      bottom:
                                          MediaQuery.of(context).size.height *
                                              0.12,
                                    ),
                                    child: AutoSizeText(
                                      'Between Earth and Paradise',
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.amaticSc(
                                          color: Colors.white,
                                          fontSize: 40,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ),
                                ),
                                Text(
                                  "“O Memory! thou midway world",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontStyle: FontStyle.italic),
                                ),
                                Text(
                                  "'Twixt earth and paradise,",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontStyle: FontStyle.italic),
                                ),
                                Text(
                                  "Where things decayed and loved ones lost",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontStyle: FontStyle.italic),
                                ),
                                Text(
                                  "In dreamy shadows rise,”",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontStyle: FontStyle.italic),
                                ),
                                Text(
                                  "",
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left:
                                        MediaQuery.of(context).size.width * 0.5,
                                    bottom: MediaQuery.of(context).size.height *
                                        0.05,
                                  ),
                                  child: Text(
                                    "- My Childhood-Home I See Again by Abraham Lincoln (1846)",
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                RichText(
                                  text: TextSpan(
                                      style: TextStyle(
                                        color: Colors.black,
                                      ),
                                      children: [
                                        TextSpan(
                                            text:
                                                "I would like to say thank you to my dear friend Camryn Brown for lending her voice to this labour of love. She read EE Cumming’s "),
                                        TextSpan(
                                          text: "I Carry Your heart With Me",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontStyle: FontStyle.italic),
                                        ),
                                        TextSpan(text: " and Lord Byron’s "),
                                        TextSpan(
                                          text: "She Walks in Beauty",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontStyle: FontStyle.italic),
                                        ),
                                        TextSpan(
                                            text: ". You should hear her sing!")
                                      ]),
                                ),
                                Text(
                                  "",
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                                RichText(
                                  text: TextSpan(
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                    children: [
                                      TextSpan(
                                          text:
                                              "I have made of use of several pieces of copyrighted work. The refrain you hear at the main menu and at several points in the story is Hans Zimmer’s"),
                                      TextSpan(
                                        text: ", Albatross Flight",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontStyle: FontStyle.italic,
                                        ),
                                      ),
                                      TextSpan(
                                          text:
                                              ", taken from the Blue Planet 2 soundtrack, which you are hearing now in full. "),
                                      TextSpan(
                                        text: "I Carry Your heart With Me",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontStyle: FontStyle.italic,
                                        ),
                                      ),
                                      TextSpan(
                                          text:
                                              " is also property of the Liveright Publishing Corporation."),
                                      TextSpan(
                                          text:
                                              "The audio for Edgar Alan Poe's, "),
                                      TextSpan(
                                        text: "A Dream Within a Dream ",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontStyle: FontStyle.italic,
                                        ),
                                      ),
                                      TextSpan(text: "was taken from "),
                                      TextSpan(
                                          text: "this YouTube video ",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontStyle: FontStyle.italic,
                                            decoration:
                                                TextDecoration.underline,
                                          ),
                                          recognizer: TapGestureRecognizer()
                                            ..onTap = () {
                                              _launchURL1();
                                            }),
                                      TextSpan(
                                          text: "uploaded by Henry Halloway."),
                                      TextSpan(text: "The choral version of "),
                                      TextSpan(
                                        text: "I Carry Your Heart With me ",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontStyle: FontStyle.italic),
                                      ),
                                      TextSpan(
                                          text: "was likewise taken from "),
                                      TextSpan(
                                          text: "a Youtube video ",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontStyle: FontStyle.italic,
                                            decoration:
                                                TextDecoration.underline,
                                          ),
                                          recognizer: TapGestureRecognizer()
                                            ..onTap = () {
                                              _launchURL2();
                                            }),
                                      TextSpan(text: "by Connor Koppin"),
                                    ],
                                  ),
                                ),
                                Text(
                                  "",
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                                RichText(
                                  text: TextSpan(
                                      style: TextStyle(
                                        color: Colors.black,
                                      ),
                                      children: [
                                        TextSpan(
                                            text:
                                                "Therefore, this app is not intended for commercial use. Please do not share it on any public platform.")
                                      ]),
                                ),
                                Text(
                                  "",
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                                Text(
                                  "Thank you.",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                                Text(
                                  "",
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                                Text(
                                  "With love,",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    bottom: MediaQuery.of(context).size.height *
                                        0.05,
                                  ),
                                  child: Text(
                                    "Sedem",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                Text(
                                  "If your heart hurts because you have lost something dear and cannot move on, know there’s a writer out there who understands.",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    showLicensePage(context: context);
                                  },
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      top: MediaQuery.of(context).size.height *
                                          0.05,
                                    ),
                                    child: Text(
                                      "I made this with Flutter",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.white,
                                          decoration: TextDecoration.underline),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                top: 12,
                                bottom:
                                    MediaQuery.of(context).size.height * 0.03),
                            child: RawMaterialButton(
                                child: Icon(
                                  Icons.arrow_back_ios,
                                  color: Colors.white,
                                ),
                                elevation: 0,
                                shape: CircleBorder(),
                                fillColor: Colors.transparent,
                                onPressed: () {
                                  setState(() {
                                    _visible = !_visible;
                                  });
                                  stop();
                                  Future.delayed(
                                      const Duration(milliseconds: 1500), () {
                                    setState(() {
                                      _visible = !_visible;
                                    });
                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => StartPage(),
                                        ));
                                  });
                                }),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
