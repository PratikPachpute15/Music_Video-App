import 'package:flutter/material.dart';

import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

AudioPlayer newPlayer = new AudioPlayer();
AudioCache audio = new AudioCache(fixedPlayer: newPlayer);

class AudioAsset extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Music"),
        backgroundColor: Colors.pink,
      ),
      body: Container(
        color: Colors.pink.shade100,
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.symmetric(vertical: 20),
              width: 300,
              height: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: AssetImage('images/butta.jpg'),
                  alignment: Alignment.topCenter,
                  fit: BoxFit.fitWidth,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0, 10),
                    spreadRadius: 0,
                    blurRadius: 50,
                  )
                ],
              ),
            ),
            Text(
              "BUTTABOMMA",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.circular(30),
              ),
              width: 200,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  IconButton(
                    iconSize: 25,
                    icon: Icon(FontAwesomeIcons.solidPauseCircle),
                    color: Colors.black87,
                    onPressed: () {
                      newPlayer.pause();
                    },
                  ),
                  IconButton(
                      iconSize: 45,
                      icon: Icon(
                        FontAwesomeIcons.play,
                        color: Colors.black87,
                      ),
                      onPressed: () {
                        audio.play("butta.mp3");
                      }),
                  IconButton(
                      iconSize: 20,
                      icon: Icon(FontAwesomeIcons.stop),
                      onPressed: () {
                        newPlayer.stop();
                      }),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
