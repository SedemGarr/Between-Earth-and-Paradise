import 'package:flutter/material.dart';

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
      {int storyNumber,
      bool hasChoice,
      bool hasImage,
      bool hasAudio,
      bool isDark,
      bool isEnding,
      Widget textWidget,
      String choiceOne,
      String choiceTwo,
      String storyImage,
      String audio,
      int choiceOnePage,
      int choiceTwoPage}) {
    this.storyNumber = storyNumber;
    this.storyImage = storyImage;
    this.hasChoice = hasChoice;
    this.hasImage = hasImage;
    this.hasAudio = hasAudio;
    this.isDark = isDark;
    this.isEnding = isEnding;
    this.audio = audio;
    this.textWidget = textWidget;
    this.choiceOne = choiceOne;
    this.choiceTwo = choiceTwo;
    this.choiceOnePage = choiceOnePage;
    this.choiceTwoPage = choiceTwoPage;
  }
}
