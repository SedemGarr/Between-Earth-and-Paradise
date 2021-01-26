import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:between_earth_and_paradise/Globals/globalVariables.dart';
import 'package:between_earth_and_paradise/Story/storyBank.dart';
import 'package:between_earth_and_paradise/Story/storyBank2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:wakelock/wakelock.dart';
import 'credits.dart';
import 'settings.dart';
import 'storyPage.dart';

class StartPage extends StatefulWidget {
  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage>
    with SingleTickerProviderStateMixin {
  bool _visible = true;
  Color _colour = Colors.white;

  updateColour() {
    Future.delayed(const Duration(milliseconds: 500), () {
      setState(() {
        _colour = Colors.grey[900];
      });
    });
  }

  final audioCache = AudioCache();
  AudioPlayer player;
  play() async {
    if (audioEnabled) {
      player = await audioCache.loop('start.mp3');
    }
  }

  stop() {
    if (audioEnabled) {
      player?.stop();
    }
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

    play();

    currentCharacter = prefs.getString('currentCharacter');
  }

  AnimationController _animationController;
  Animation _animation;

  @override
  void initState() {
    updateColour();
    Future.delayed(const Duration(milliseconds: 8000), () {
      if (isSplashing) {
        setState(() {
          isSplashing = false;
        });
      }
    });
    checkProgress();
    _animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
    _animationController.repeat(reverse: true);
    _animation = Tween(begin: 2.0, end: 15.0).animate(_animationController)
      ..addListener(() {
        setState(() {});
      });
    Wakelock.enable();
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return isSplashing
        ? WillPopScope(
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
                          textStyle: GoogleFonts.sourceCodePro(
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
          )
        : showCharacterSelect
            ? WillPopScope(
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
                      padding: EdgeInsets.symmetric(
                          vertical: 50.0, horizontal: 15.0),
                      constraints: BoxConstraints.expand(),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          AnimatedOpacity(
                              opacity: showSefa ? 1.0 : 0.0,
                              duration: Duration(milliseconds: 500),
                              child: GestureDetector(
                                  onTap: () {
                                    storyNumberIndex = 0;
                                    storyBank = storyBank1;
                                    setState(() {
                                      showKabuki = !showKabuki;
                                    });
                                    Future.delayed(
                                        const Duration(milliseconds: 2000), () {
                                      stop();
                                      Navigator.pushReplacement(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => StoryPage(),
                                          ));
                                      _visible = !_visible;
                                    });
                                  },
                                  child: Container(
                                    child: Column(
                                      children: [
                                        CircleAvatar(
                                          radius: 50,
                                          backgroundImage:
                                              AssetImage('images/Sefa.jpg'),
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Text(
                                          '"half of him is here"',
                                          style: GoogleFonts.indieFlower(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ),
                                  ))),
                          SizedBox(
                            height: 0,
                          ),
                          AnimatedOpacity(
                              opacity: showKabuki ? 1.0 : 0.0,
                              duration: Duration(milliseconds: 500),
                              child: GestureDetector(
                                onTap: () {},
                                child: Container(
                                  child: Column(
                                    children: [
                                      CircleAvatar(
                                        radius: 50,
                                        backgroundImage:
                                            AssetImage('images/Kabuki.jpg'),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Text(
                                        'carpe diem',
                                        style: GoogleFonts.indieFlower(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        'NOT AVAILABLE YET',
                                        // style: GoogleFonts.indieFlower(
                                        //     fontSize: 20, fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                ),
                              )),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            : WillPopScope(
                onWillPop: () async => false,
                child: SafeArea(
                  child: Scaffold(
                    body: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('images/background.jpg'),
                          scale: _animation.value,
                          fit: BoxFit.cover,
                        ),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 15.0),
                      constraints: BoxConstraints.expand(),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            child: Padding(
                              padding: EdgeInsets.only(
                                  top: MediaQuery.of(context).size.height *
                                      0.25),
                              child: Column(
                                children: [
                                  Text(
                                    'Between Earth',
                                    style: GoogleFonts.amaticSc(
                                        color: Colors.black,
                                        fontSize: 60,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  Text(
                                    'and',
                                    style: GoogleFonts.amaticSc(
                                        color: Colors.black,
                                        fontSize: 30,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  Text(
                                    'Paradise',
                                    style: GoogleFonts.amaticSc(
                                        color: Colors.black,
                                        fontSize: 60,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          AnimatedOpacity(
                            opacity: _visible ? 1.0 : 0.0,
                            duration: Duration(milliseconds: 500),
                            child: Column(
                              children: [
                                isComplete
                                    ? Container()
                                    : Container(
                                        decoration: BoxDecoration(
                                            color: Colors.transparent,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(70)),
                                            boxShadow: [
                                              BoxShadow(
                                                color:
                                                    Color.fromARGB(20, 0, 0, 0),
                                                blurRadius: _animation.value,
                                                //spreadRadius: _animation.value
                                              )
                                            ]),
                                        child: storyNumberIndex == 0 ||
                                                currentCharacter == null
                                            ? FlatButton(
                                                onPressed: () {
                                                  setState(() {
                                                    _visible = !_visible;
                                                  });
                                                  Future.delayed(
                                                      const Duration(
                                                          milliseconds: 2000),
                                                      () {
                                                    //stop();
                                                    showCharacterSelect = true;
                                                  });
                                                },
                                                child: Text(
                                                  'Begin',
                                                  style:
                                                      GoogleFonts.indieFlower(),
                                                ))
                                            : FlatButton(
                                                onPressed: () {
                                                  setState(() {
                                                    _visible = !_visible;
                                                  });
                                                  Future.delayed(
                                                      const Duration(
                                                          milliseconds: 2000),
                                                      () {
                                                    stop();
                                                    if (currentCharacter ==
                                                        'Sefa') {
                                                      storyBank = storyBank1;
                                                      Navigator.pushReplacement(
                                                          context,
                                                          MaterialPageRoute(
                                                            builder:
                                                                (context) =>
                                                                    StoryPage(),
                                                          ));
                                                    }
                                                    if (currentCharacter ==
                                                        'Kabuki') {
                                                      storyBank = storyBank2;
                                                      Navigator.pushReplacement(
                                                          context,
                                                          MaterialPageRoute(
                                                            builder:
                                                                (context) =>
                                                                    StoryPage(),
                                                          ));
                                                    }
                                                    _visible = !_visible;
                                                  });
                                                },
                                                child: Text(
                                                  'Continue',
                                                  style:
                                                      GoogleFonts.indieFlower(),
                                                ),
                                              ),
                                      ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Container(),
                          ),
                          AnimatedOpacity(
                            opacity: _visible ? 1.0 : 0.0,
                            duration: Duration(milliseconds: 500),
                            child: Padding(
                              padding: EdgeInsets.only(
                                  bottom: MediaQuery.of(context).size.height *
                                      0.01),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    child: isComplete
                                        ? FlatButton(
                                            onPressed: () {
                                              setState(() {
                                                _visible = !_visible;
                                              });
                                              storyNumberIndex = 0;
                                              Future.delayed(
                                                  const Duration(
                                                      milliseconds: 2000), () {
                                                stop();
                                                Navigator.pushReplacement(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder: (context) =>
                                                          CreditsPage(),
                                                    ));
                                                _visible = !_visible;
                                              });
                                            },
                                            child: Text(
                                              'Credits',
                                              style: GoogleFonts.indieFlower(
                                                  color: Colors.white),
                                            ))
                                        : Container(),
                                  ),
                                  Container(
                                    child: storyNumberIndex != 0 ||
                                            isComplete == true
                                        ? FlatButton(
                                            onPressed: () {
                                              storyBank = [];
                                              setState(() {
                                                _visible = !_visible;
                                              });
                                              storyNumberIndex = 0;
                                              Future.delayed(
                                                  const Duration(
                                                      milliseconds: 2000), () {
                                                // stop();
                                                showCharacterSelect = true;
                                              });
                                            },
                                            child: Text(
                                              'Restart',
                                              style: GoogleFonts.indieFlower(
                                                  color: Colors.white),
                                            ))
                                        : Container(),
                                  ),
                                  FlatButton(
                                      onPressed: () {
                                        setState(() {
                                          _visible = !_visible;
                                        });
                                        stop();
                                        Future.delayed(
                                            const Duration(milliseconds: 2000),
                                            () {
                                          Navigator.pushReplacement(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    SettingsPage(),
                                              ));
                                          _visible = !_visible;
                                        });
                                      },
                                      child: Text(
                                        'Settings',
                                        style: GoogleFonts.indieFlower(
                                            color: Colors.white),
                                      )),
                                  FlatButton(
                                      onPressed: () {
                                        setState(() {
                                          _visible = !_visible;
                                        });
                                        Wakelock.disable();
                                        Future.delayed(
                                            const Duration(milliseconds: 2000),
                                            () {
                                          stop();
                                          SystemChannels.platform.invokeMethod(
                                              'SystemNavigator.pop');
                                        });
                                      },
                                      child: Text(
                                        'Exit',
                                        style: GoogleFonts.indieFlower(
                                            color: Colors.white),
                                      )),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
  }
}
