import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:between_earth_and_paradise/Globals/globalVariables.dart';
import 'package:between_earth_and_paradise/Screens/startpage.dart';
import 'package:between_earth_and_paradise/Story/storyBank.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

class StoryPage extends StatefulWidget {
  @override
  _StoryPageState createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      home: StoryUI(),
    );
  }
}

class StoryUI extends StatefulWidget {
  @override
  _StoryUIState createState() => _StoryUIState();
}

class _StoryUIState extends State<StoryUI> {
  bool _visible = true;
  final audioCache = AudioCache();
  AudioPlayer player;

  audioCheck() async {
    if (storyBank[storyNumberIndex].hasAudio == true) {
      if (audioEnabled) {
        player = await audioCache.play(storyBank[storyNumberIndex].audio);
      }
    } else {}
  }

  saveProgress() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      prefs.setInt('currentProgress', storyNumberIndex);
    });
  }

  saveComplete() async {
    if (audioEnabled) {
      stop();
    }

    storyNumberIndex = 0;
    currentCharacter = null;
    showCharacterSelect = false;
    isComplete = true;
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      prefs.setBool('isComplete', isComplete);
    });
  }

  saveCharacter() async {
    currentCharacter = 'Sefa';
    showSefa = true;
    showKabuki = true;
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      prefs.setString('currentCharacter', currentCharacter);
    });
  }

  stop() {
    if (audioEnabled) {
      player?.stop();
    }
  }

  @override
  void initState() {
    saveCharacter();
    audioCheck();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return storyBank[storyNumberIndex].hasChoice
        ? WillPopScope(
            onWillPop: () async => false,
            child: Scaffold(
              body: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: storyBank[storyNumberIndex].hasImage
                        ? AssetImage(storyBank[storyNumberIndex].storyImage)
                        : AssetImage(storyBank[storyNumberIndex].storyImage),
                    fit: BoxFit.cover,
                  ),
                ),
                padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 15.0),
                constraints: BoxConstraints.expand(),
                child: AnimatedOpacity(
                  opacity: _visible ? 1.0 : 0.0,
                  duration: Duration(milliseconds: 500),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          RawMaterialButton(
                              child: Icon(
                                Icons.home,
                                color: Colors.white,
                              ),
                              elevation: 0,
                              shape: CircleBorder(),
                              fillColor: Colors.black,
                              onPressed: () {
                                if (storyBank[storyNumberIndex].isEnding) {
                                  saveComplete();
                                }
                                saveProgress();
                                showCharacterSelect = false;
                                stop();
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => StartPage(),
                                    ));
                              }),
                        ],
                      ),
                      Expanded(
                        flex: 12,
                        child: Center(
                          child: storyBank[storyNumberIndex].textWidget,
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Card(
                          color: Color.fromRGBO(255, 255, 255, 0.5),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                            ),
                            child: FlatButton(
                              onPressed: () async {
                                setState(() {
                                  _visible = !_visible;
                                });
                                Future.delayed(
                                    const Duration(milliseconds: 1500), () {
                                  stop();
                                  setState(() {
                                    storyNumberIndex =
                                        storyBank[storyNumberIndex]
                                            .choiceOnePage;
                                    _visible = !_visible;
                                  });
                                  saveProgress();
                                  audioCheck();
                                });
                              },
                              child: Text(
                                storyBank[storyNumberIndex].choiceOne,
                                style: GoogleFonts.indieFlower(),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Expanded(
                        flex: 2,
                        child: Card(
                          color: Color.fromRGBO(255, 255, 255, 0.5),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                            ),
                            child: FlatButton(
                              onPressed: !_visible
                                  ? () {}
                                  : () async {
                                      setState(() {
                                        _visible = !_visible;
                                      });
                                      Future.delayed(
                                          const Duration(milliseconds: 1500),
                                          () {
                                        stop();
                                        setState(() {
                                          storyNumberIndex =
                                              storyBank[storyNumberIndex]
                                                  .choiceTwoPage;
                                          _visible = !_visible;
                                        });
                                        saveProgress();
                                        audioCheck();
                                      });
                                    },
                              child: Text(
                                storyBank[storyNumberIndex].choiceTwo,
                                style: GoogleFonts.indieFlower(),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        : WillPopScope(
            onWillPop: () async => false,
            child: Scaffold(
              body: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: storyBank[storyNumberIndex].hasImage
                        ? AssetImage(storyBank[storyNumberIndex].storyImage)
                        : AssetImage(storyBank[storyNumberIndex].storyImage),
                    fit: BoxFit.cover,
                  ),
                ),
                padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 15.0),
                constraints: BoxConstraints.expand(),
                child: AnimatedOpacity(
                  opacity: _visible ? 1.0 : 0.0,
                  duration: Duration(milliseconds: 500),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          RawMaterialButton(
                              child: Icon(
                                Icons.home,
                                color: Colors.white,
                              ),
                              elevation: 0,
                              shape: CircleBorder(),
                              fillColor: Colors.black,
                              onPressed: () {
                                if (storyBank[storyNumberIndex].isEnding) {
                                  saveComplete();
                                }
                                showCharacterSelect = false;
                                stop();
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => StartPage(),
                                    ));
                              }),
                        ],
                      ),
                      Expanded(
                        flex: 12,
                        child: Center(
                          child: storyBank[storyNumberIndex].textWidget,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            child: storyBank[storyNumberIndex].isEnding
                                ? Container()
                                : RawMaterialButton(
                                    child: Icon(
                                      Icons.arrow_forward_ios,
                                      color: Colors.white,
                                    ),
                                    elevation: 0,
                                    shape: CircleBorder(),
                                    fillColor: Colors.black,
                                    onPressed: !_visible
                                        ? () {}
                                        : () {
                                            setState(() {
                                              _visible = !_visible;
                                            });
                                            Future.delayed(
                                                const Duration(
                                                    milliseconds: 1500), () {
                                              setState(() {
                                                storyNumberIndex++;
                                                _visible = !_visible;
                                              });
                                              saveProgress();
                                              audioCheck();
                                            });
                                          }),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
  }
}
