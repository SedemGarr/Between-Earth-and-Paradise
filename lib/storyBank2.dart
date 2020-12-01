import 'package:google_fonts/google_fonts.dart';
import 'story.dart';
import 'package:flutter/material.dart';

List storyBank2 = [
  Story(
      storyNumber1: 0,
      storyImage1: 'images/0.jpg',
      choiceOne1: '',
      choiceTwo1: '',
      audio1: null,
      choiceOnePage1: 1,
      choiceTwoPage1: 1,
      hasChoice1: false,
      isDark1: false,
      isEnding1: false,
      hasAudio1: false,
      textWidget1: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text(''), Text('')],
          ),
        ),
      ),
      hasImage1: true),
  Story(
      storyNumber1: 1,
      storyImage1: 'images/1.jpg',
      choiceOne1: '',
      choiceTwo1: '',
      audio1: 'icarry.mp3',
      choiceOnePage1: null,
      choiceTwoPage1: null,
      hasChoice1: false,
      isDark1: true,
      isEnding1: false,
      textWidget1: Center(
        child: Container(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'i carry your heart with me (i carry it in',
                style: GoogleFonts.amaticSc(
                    //   shadows: [
                    //   Shadow(
                    //     offset: Offset(0.5, 0.5),
                    //     blurRadius: 1.0,
                    //     color: Color.fromARGB(255, 0, 0, 0),
                    //   )
                    // ],
                    fontSize: 25,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'my heart) i am never without it (anywhere',
                style: GoogleFonts.amaticSc(
                    //   shadows: [
                    //   Shadow(
                    //     offset: Offset(0.5, 0.5),
                    //     blurRadius: 1.0,
                    //     color: Color.fromARGB(255, 0, 0, 0),
                    //   )
                    // ],
                    fontSize: 25,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'i go you go, my dear; and whatever is done',
                style: GoogleFonts.amaticSc(
                    //   shadows: [
                    //   Shadow(
                    //     offset: Offset(0.5, 0.5),
                    //     blurRadius: 1.0,
                    //     color: Color.fromARGB(255, 0, 0, 0),
                    //   )
                    // ],
                    fontSize: 25,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'by only me is your doing, my darling)',
                style: GoogleFonts.amaticSc(
                    //shadows: [
                    // Shadow(
                    //   offset: Offset(0.5, 0.5),
                    //   blurRadius: 1.0,
                    //   color: Color.fromARGB(255, 0, 0, 0),
                    // )
                    //],
                    fontSize: 25,
                    fontWeight: FontWeight.w700),
              ),
            ],
          ),
        ),
      ),
      hasAudio1: true,
      hasImage1: true),
  Story(
      storyNumber1: 2,
      storyImage1: 'images/2.jpg',
      choiceOne1: '',
      choiceTwo1: '',
      audio1: null,
      choiceOnePage1: null,
      choiceTwoPage1: null,
      hasChoice1: false,
      isDark1: false,
      isEnding1: false,
      textWidget1: Center(
        child: Container(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'i fear',
                style: GoogleFonts.amaticSc(
                    // shadows: [
                    //   Shadow(
                    //     offset: Offset(0.5, 0.5),
                    //     blurRadius: 1.0,
                    //     color: Color.fromARGB(255, 255, 255, 255),
                    //   )
                    // ],
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                    color: Colors.white),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'no fate (for you are my fate, my sweet) i want',
                style: GoogleFonts.amaticSc(
                    // shadows: [
                    //   Shadow(
                    //     offset: Offset(0.5, 0.5),
                    //     blurRadius: 1.0,
                    //     color: Color.fromARGB(255, 255, 255, 255),
                    //   )
                    // ],
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                    color: Colors.white),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'no world (for beautiful you are my world, my true)',
                style: GoogleFonts.amaticSc(
                    // shadows: [
                    //   Shadow(
                    //     offset: Offset(0.5, 0.5),
                    //     blurRadius: 1.0,
                    //     color: Color.fromARGB(255, 255, 255, 255),
                    //   )
                    // ],
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                    color: Colors.white),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'and it’s you are whatever a moon has always meant',
                style: GoogleFonts.amaticSc(
                    // shadows: [
                    //   Shadow(
                    //     offset: Offset(0.5, 0.5),
                    //     blurRadius: 1.0,
                    //     color: Color.fromARGB(255, 255, 255, 255),
                    //   )
                    // ],
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                    color: Colors.white),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'and whatever a sun will always sing is you',
                style: GoogleFonts.amaticSc(
                    // shadows: [
                    //   Shadow(
                    //     offset: Offset(0.5, 0.5),
                    //     blurRadius: 1.0,
                    //     color: Color.fromARGB(255, 255, 255, 255),
                    //   )
                    // ],
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                    color: Colors.white),
              ),
            ],
          ),
        ),
      ),
      hasAudio1: false,
      hasImage1: true),
  Story(
      storyNumber1: 3,
      storyImage1: 'images/3.jpg',
      choiceOne1: '',
      choiceTwo1: '',
      audio1: null,
      choiceOnePage1: null,
      choiceTwoPage1: null,
      hasChoice1: false,
      isDark1: false,
      isEnding1: false,
      textWidget1: Center(
        child: Container(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'here is the deepest secret nobody knows',
                style: GoogleFonts.amaticSc(
                    // shadows: [
                    //   Shadow(
                    //     offset: Offset(0.5, 0.5),
                    //     blurRadius: 1.0,
                    //     color: Color.fromARGB(255, 255, 255, 255),
                    //   )
                    // ],
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                    color: Colors.white),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                '(here is the root of the root and the bud of the bud',
                style: GoogleFonts.amaticSc(
                    // shadows: [
                    //   Shadow(
                    //     offset: Offset(0.5, 0.5),
                    //     blurRadius: 1.0,
                    //     color: Color.fromARGB(255, 255, 255, 255),
                    //   )
                    // ],
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                    color: Colors.white),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'and the sky of the sky of a tree called life; which grows',
                style: GoogleFonts.amaticSc(
                    // shadows: [
                    //   Shadow(
                    //     offset: Offset(0.5, 0.5),
                    //     blurRadius: 1.0,
                    //     color: Color.fromARGB(255, 255, 255, 255),
                    //   )
                    // ],
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                    color: Colors.white),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'higher than soul can hope or mind can hide)',
                style: GoogleFonts.amaticSc(
                    // shadows: [
                    //   Shadow(
                    //     offset: Offset(0.5, 0.5),
                    //     blurRadius: 1.0,
                    //     color: Color.fromARGB(255, 255, 255, 255),
                    //   )
                    // ],
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                    color: Colors.white),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'and this is the wonder that\'s keeping the stars apart',
                style: GoogleFonts.amaticSc(
                    // shadows: [
                    //   Shadow(
                    //     offset: Offset(0.5, 0.5),
                    //     blurRadius: 1.0,
                    //     color: Color.fromARGB(255, 255, 255, 255),
                    //   )
                    // ],
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                    color: Colors.white),
              ),
            ],
          ),
        ),
      ),
      hasAudio1: false,
      hasImage1: true),
  Story(
      storyNumber1: 4,
      storyImage1: 'images/4.jpg',
      choiceOne1: '',
      choiceTwo1: '',
      audio1: null,
      choiceOnePage1: null,
      choiceTwoPage1: null,
      hasChoice1: false,
      isDark1: true,
      isEnding1: false,
      textWidget1: Center(
        child: Container(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'i carry your heart (i carry it in my heart)',
                style: GoogleFonts.amaticSc(
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                    color: Colors.black),
              ),
            ],
          ),
        ),
      ),
      hasAudio1: false,
      hasImage1: true),
  Story(
      storyNumber1: 5,
      storyImage1: 'images/5.jpg',
      choiceOne1: '',
      choiceTwo1: '',
      audio1: null,
      choiceOnePage1: null,
      choiceTwoPage1: null,
      hasChoice1: false,
      isDark1: true,
      isEnding1: false,
      textWidget1: Center(
        child: Container(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'His eyes follow her all the way back to her seat. At break time, he follows her to her tree. She always sits under that lonely tree. She looks up from her book and she smiles. A seed has been planted.',
                style: GoogleFonts.amaticSc(
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                    color: Colors.black),
              ),
            ],
          ),
        ),
      ),
      hasAudio1: false,
      hasImage1: true),
  Story(
      storyNumber1: 6,
      storyImage1: 'images/6.jpg',
      choiceOne1: '',
      choiceTwo1: '',
      audio1: 'alarm.mp3',
      choiceOnePage1: null,
      choiceTwoPage1: null,
      hasChoice1: false,
      isDark1: true,
      isEnding1: false,
      textWidget1: Center(
        child: Container(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Sefa’s eyes slowly open. He drags himself to his feet. He rushes to take the window seat in the trotro so he can rest his head against the glass. He doesn’t bother to lie about the time when he signs in at work. He doesn’t bother about Mr Mensah’s disapproving glance as he trudges to his desk. When he gets home, he stops by his sick mother’s room then continues his slog to his bed. He lies perfectly still until everything starts to fade.',
                style: GoogleFonts.amaticSc(
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                    color: Colors.black),
              ),
            ],
          ),
        ),
      ),
      hasAudio1: true,
      hasImage1: true),
  Story(
      storyNumber1: 7,
      storyImage1: 'images/7.jpg',
      choiceOne1: '',
      choiceTwo1: '',
      audio1: null,
      choiceOnePage1: null,
      choiceTwoPage1: null,
      hasChoice1: false,
      isDark1: true,
      isEnding1: false,
      textWidget1: Center(
        child: Container(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'She is under her tree. Her smile invites him in. She starts to read and all is still.',
                style: GoogleFonts.amaticSc(
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                    color: Colors.black),
              ),
            ],
          ),
        ),
      ),
      hasAudio1: false,
      hasImage1: true),
  Story(
      storyNumber1: 8,
      storyImage1: 'images/8.jpg',
      choiceOne1: '',
      choiceTwo1: '',
      audio1: 'beauty1.mp3',
      choiceOnePage1: null,
      choiceTwoPage1: null,
      hasChoice1: false,
      isDark1: true,
      isEnding1: false,
      textWidget1: Center(
        child: Container(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'She walks in beauty, like the night',
                style: GoogleFonts.amaticSc(
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                    color: Colors.white),
              ),
              SizedBox(height: 10),
              Text(
                'Of cloudless climes and starry skies;',
                style: GoogleFonts.amaticSc(
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                    color: Colors.white),
              ),
              SizedBox(height: 10),
              Text(
                'And all that’s best of dark and bright.',
                style: GoogleFonts.amaticSc(
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                    color: Colors.white),
              ),
              SizedBox(height: 10),
              Text(
                'Meet in her aspect and her eyes;',
                style: GoogleFonts.amaticSc(
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                    color: Colors.white),
              ),
              SizedBox(height: 10),
              Text(
                'Thus mellowed to that tender light',
                style: GoogleFonts.amaticSc(
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                    color: Colors.white),
              ),
              SizedBox(height: 10),
              Text(
                'Which heaven to gaudy day denies.',
                style: GoogleFonts.amaticSc(
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                    color: Colors.white),
              ),
            ],
          ),
        ),
      ),
      hasAudio1: true,
      hasImage1: true),
  Story(
      storyNumber1: 9,
      storyImage1: 'images/6.jpg',
      choiceOne1: '',
      choiceTwo1: '',
      audio1: 'alarm.mp3',
      choiceOnePage1: null,
      choiceTwoPage1: null,
      hasChoice1: false,
      isDark1: true,
      isEnding1: false,
      textWidget1: Center(
        child: Container(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Sefa’s eyes slowly open. He drags himself to his feet. He rushes to take the window seat in the trotro so he can rest his head against the glass. He doesn’t bother to lie about the time when he signs in at work. He doesn’t bother about Mr Mensah’s disapproving glance as he trudges to his desk. After work, he stares out of the window of the pub. He doesn’t notice Kabuki asking him what drinks they should order. When he gets home, he stops by his sick mother’s room then continues his slog to his bed. He lies perfectly still until everything starts to fade.',
                style: GoogleFonts.amaticSc(
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                    color: Colors.black),
              ),
            ],
          ),
        ),
      ),
      hasAudio1: true,
      hasImage1: true),
  Story(
      storyNumber1: 10,
      storyImage1: 'images/10.jpg',
      choiceOne1: '',
      choiceTwo1: '',
      audio1: null,
      choiceOnePage1: null,
      choiceTwoPage1: null,
      hasChoice1: false,
      isDark1: true,
      isEnding1: false,
      textWidget1: Center(
        child: Container(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'He can see himself back at the dining table surrounded by textbooks. He looks up as his father steps out of Kofi’s room and shuts the door behind him carefully so he will not awaken his mother. His mother sleeps with Kofi now in case Kofi needs someone during the night. His father yawns and his shoulders sag as he leans against the door. After a while, his father looks at him.',
                style: GoogleFonts.amaticSc(
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                    color: Colors.black),
              ),
            ],
          ),
        ),
      ),
      hasAudio1: false,
      hasImage1: true),
  Story(
      storyNumber1: 11,
      storyImage1: 'images/10.jpg',
      choiceOne1: '',
      choiceTwo1: '',
      audio1: null,
      choiceOnePage1: null,
      choiceTwoPage1: null,
      hasChoice1: false,
      isDark1: true,
      isEnding1: false,
      textWidget1: Center(
        child: Container(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'His father asks about his homework.',
                style: GoogleFonts.amaticSc(
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                    color: Colors.black),
              ),
              SizedBox(height: 10),
              Text(
                'He shakes his head. He doesn’t understand fractions.',
                style: GoogleFonts.amaticSc(
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                    color: Colors.black),
              ),
              SizedBox(height: 10),
              Text(
                'His father sighs. He starts to say something but a cry erupts from Kofi’s room. His father rushes back in.',
                style: GoogleFonts.amaticSc(
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                    color: Colors.black),
              ),
              SizedBox(height: 10),
              Text(
                'He bends over his math homework but doesn’t write.',
                style: GoogleFonts.amaticSc(
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                    color: Colors.black),
              ),
            ],
          ),
        ),
      ),
      hasAudio1: false,
      hasImage1: true),
  Story(
      storyNumber1: 12,
      storyImage1: 'images/6.jpg',
      choiceOne1: '',
      choiceTwo1: '',
      audio1: 'alarm.mp3',
      choiceOnePage1: null,
      choiceTwoPage1: null,
      hasChoice1: false,
      isDark1: true,
      isEnding1: false,
      textWidget1: Center(
        child: Container(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Sefa’s eyes slowly open. He drags himself to his feet. He rushes to take the window seat in the trotro so he can rest his head against the glass. He doesn’t bother to lie about the time when he signs in at work. He doesn’t bother about Mr Mensah’s disapproving glance as he trudges to his desk. When he gets home, he stops by his sick mother’s room. Doctor Frimpong looks at him as he continues his slog to his bed. He lies perfectly still until everything starts to fade.',
                style: GoogleFonts.amaticSc(
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                    color: Colors.black),
              ),
            ],
          ),
        ),
      ),
      hasAudio1: true,
      hasImage1: true),
  Story(
      storyNumber1: 13,
      storyImage1: 'images/13.jpg',
      choiceOne1: '',
      choiceTwo1: '',
      audio1: null,
      choiceOnePage1: null,
      choiceTwoPage1: null,
      hasChoice1: false,
      isDark1: true,
      isEnding1: false,
      textWidget1: Center(
        child: Container(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'She is exactly where she was. He joins her under the tree and she takes him in.',
                style: GoogleFonts.amaticSc(
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                    color: Colors.black),
              ),
            ],
          ),
        ),
      ),
      hasAudio1: false,
      hasImage1: true),
  Story(
      storyNumber1: 14,
      storyImage1: 'images/14.jpg',
      choiceOne1: '',
      choiceTwo1: '',
      audio1: 'beauty2.mp3',
      choiceOnePage1: null,
      choiceTwoPage1: null,
      hasChoice1: false,
      isDark1: true,
      isEnding1: false,
      textWidget1: Center(
        child: Container(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'One shade the more, one ray the less,',
                style: GoogleFonts.amaticSc(
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                    color: Colors.white),
              ),
              SizedBox(height: 10),
              Text(
                'Had half impaired the nameless grace',
                style: GoogleFonts.amaticSc(
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                    color: Colors.white),
              ),
              SizedBox(height: 10),
              Text(
                'Which waves in every raven tress,',
                style: GoogleFonts.amaticSc(
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                    color: Colors.white),
              ),
              SizedBox(height: 10),
              Text(
                'Or softly lightens o’er her face;',
                style: GoogleFonts.amaticSc(
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                    color: Colors.white),
              ),
              SizedBox(height: 10),
              Text(
                'Where thoughts serenely sweet express,',
                style: GoogleFonts.amaticSc(
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                    color: Colors.white),
              ),
              SizedBox(height: 10),
              Text(
                'How pure, how dear their dwelling-place.',
                style: GoogleFonts.amaticSc(
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                    color: Colors.white),
              ),
            ],
          ),
        ),
      ),
      hasAudio1: true,
      hasImage1: true),
];
