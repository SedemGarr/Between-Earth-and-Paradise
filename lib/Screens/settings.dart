import 'package:between_earth_and_paradise/Globals/globalVariables.dart';
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'startpage.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool _visible = true;

  saveSettings() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    // audio
    prefs.setBool("audioEnabled", audioEnabled);
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
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            constraints: BoxConstraints.expand(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.03),
                  child: Container(
                    width: MediaQuery.of(context).size.height * 0.8,
                    height: MediaQuery.of(context).size.height * 0.12,
                    child: Center(
                      child: AutoSizeText(
                        'Settings',
                        style: GoogleFonts.amaticSc(
                            color: Colors.white,
                            fontSize: 60,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(),
                ),
                AnimatedOpacity(
                  opacity: _visible ? 1.0 : 0.0,
                  duration: Duration(milliseconds: 500),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width * 0.1),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      color: Colors.transparent,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            vertical:
                                MediaQuery.of(context).size.height * 0.05),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              children: [
                                Text(
                                  'SOUND: ',
                                  style: TextStyle(fontSize: 20),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Switch(
                                  value: audioEnabled,
                                  onChanged: (value) {
                                    setState(() {
                                      audioEnabled = value;
                                      saveSettings();
                                    });
                                  },
                                  activeTrackColor: Colors.white,
                                  inactiveTrackColor: Colors.grey[900],
                                  activeColor: Colors.white,
                                  inactiveThumbColor: Colors.black,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).size.height * 0.03),
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
                        Future.delayed(const Duration(milliseconds: 1500), () {
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
    );
  }
}
