import 'package:flutter/cupertino.dart';

class Story {
  int storyNumber;

  bool hasChoice = true;
  bool hasImage = true;
  bool hasAudio = true;
  bool isDark = true;
  bool isEnding = false;

  String choiceOne;
  String choiceTwo;
  String storyImage;
  String audio;
  int choiceOnePage;
  int choiceTwoPage;
  Widget textWidget;

  Story(
      {int storyNumber1,
      bool hasChoice1,
      bool hasImage1,
      bool hasAudio1,
      bool isDark1,
      bool isEnding1,
      Widget textWidget1,
      String choiceOne1,
      String choiceTwo1,
      String storyImage1,
      String audio1,
      int choiceOnePage1,
      int choiceTwoPage1}) {
    storyNumber = storyNumber1;
    storyImage = storyImage1;
    hasChoice = hasChoice1;
    hasImage = hasImage1;
    hasAudio = hasAudio1;
    isDark = isDark1;
    isEnding = isEnding1;
    audio = audio1;
    textWidget = textWidget1;
    choiceOne = choiceOne1;
    choiceTwo = choiceTwo1;
    choiceOnePage = choiceOnePage1;
    choiceTwoPage = choiceTwoPage1;
  }
}
