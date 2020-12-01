import 'package:audioplayers/audioplayers.dart';
import 'package:between_earth_and_paradise/globalVariables.dart';
import 'package:between_earth_and_paradise/storyBank.dart';
import 'package:between_earth_and_paradise/storyBank2.dart';
import 'package:between_earth_and_paradise/storyPage.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.light(
          //primarySwatch: Colors.blue,
          //visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
      home: StartPage(),
    );
  }
}

class StartPage extends StatefulWidget {
  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage>
    with SingleTickerProviderStateMixin {
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

    currentCharacter = prefs.getString('currentCharacter');
  }

  bool _visible = true;
  final audioCache = AudioCache();
  AudioPlayer player;
  play() async {
    player = await audioCache.loop('start.mp3');
  }

  stop() {
    player?.stop();
  }

  AnimationController _animationController;
  Animation _animation;

  @override
  void initState() {
    play();
    checkProgress();
    _animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
    _animationController.repeat(reverse: true);
    _animation = Tween(begin: 2.0, end: 15.0).animate(_animationController)
      ..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return showCharacterSelect
        ? Scaffold(
            body: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/background.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 15.0),
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
                            Future.delayed(const Duration(milliseconds: 2500),
                                () {
                              stop();
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => StoryPage(),
                                  ));
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
                                  'half of him is here',
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
                        onTap: () {
                          // storyNumberIndex = 0;
                          // storyBank = storyBank2;
                          // setState(() {
                          //   showSefa = !showSefa;
                          // });
                          // Future.delayed(const Duration(milliseconds: 2500),
                          //     () {
                          //   stop();
                          //   Navigator.push(
                          //       context,
                          //       MaterialPageRoute(
                          //         builder: (context) => StoryPage(),
                          //       ));
                          // });
                        },
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
                                    fontSize: 20, fontWeight: FontWeight.bold),
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
          )
        : Scaffold(
            body: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/background.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 15.0),
              constraints: BoxConstraints.expand(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    child: Center(
                      child: Column(
                        children: [
                          Text(
                            'Between Earth',
                            style: GoogleFonts.amaticSc(
                                fontSize: 60, fontWeight: FontWeight.w700),
                          ),
                          Text(
                            'and',
                            style: GoogleFonts.amaticSc(
                                fontSize: 30, fontWeight: FontWeight.w700),
                          ),
                          Text(
                            'Paradise',
                            style: GoogleFonts.amaticSc(
                                fontSize: 60, fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                    ),
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
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(70)),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color.fromARGB(20, 0, 0, 0),
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
                                                  milliseconds: 2500), () {
                                            //stop();
                                            showCharacterSelect = true;
                                          });
                                        },
                                        child: Text(
                                          'Begin',
                                          style: GoogleFonts.indieFlower(),
                                        ))
                                    : FlatButton(
                                        onPressed: () {
                                          setState(() {
                                            _visible = !_visible;
                                          });
                                          Future.delayed(
                                              const Duration(
                                                  milliseconds: 2500), () {
                                            stop();

                                            if (currentCharacter == 'Sefa') {
                                              storyBank = storyBank1;
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        StoryPage(),
                                                  ));
                                            }
                                            if (currentCharacter == 'Kabuki') {
                                              storyBank = storyBank2;
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        StoryPage(),
                                                  ));
                                            }
                                          });
                                        },
                                        child: Text(
                                          'Continue',
                                          style: GoogleFonts.indieFlower(),
                                        ),
                                      ),
                              ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          child: storyNumberIndex != 0 || isComplete == true
                              ? FlatButton(
                                  onPressed: () {
                                    storyBank = [];
                                    setState(() {
                                      _visible = !_visible;
                                    });
                                    storyNumberIndex = 0;
                                    Future.delayed(
                                        const Duration(milliseconds: 2500), () {
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
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
  }
}
