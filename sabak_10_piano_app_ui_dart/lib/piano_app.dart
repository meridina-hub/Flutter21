import 'package:flutter/material.dart';
import 'package:sabak_10_piano_app_ui_dart/widgets/black_piano_key.dart';
import 'package:sabak_10_piano_app_ui_dart/widgets/white_piano_key.dart';

class PianoApp extends StatelessWidget {
  const PianoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(),
      body: Column(
        children: [
          Spacer(),
          Stack(
            children: [
              Row(
                children: [
                  WhitePianoKey(),
                  WhitePianoKey(),
                  WhitePianoKey(),
                  WhitePianoKey(),
                  WhitePianoKey(),
                  WhitePianoKey(),
                  WhitePianoKey(),
                  WhitePianoKey(),
                  WhitePianoKey(),
                  WhitePianoKey(),
                  WhitePianoKey(),
                  WhitePianoKey(),
                  WhitePianoKey(),
                ],
              ),
              BlackPianoKey(left: 35),
              BlackPianoKey(left: 90),
              BlackPianoKey(left: 200),
              BlackPianoKey(left: 255),
              BlackPianoKey(left: 310),
              BlackPianoKey(left: 420),
              BlackPianoKey(right: 55),
              BlackPianoKey(right: 110),
              BlackPianoKey(right: 220),
            ],
          ),
        ],
      ),
    );
  }

  AppBar myAppBar() {
    return AppBar(
      backgroundColor: Color(0xff202637),
      title: Center(
        child: Text(
          'My Piano App',
          style: TextStyle(
            color: Color(0xffFFFFFF),
            fontSize: 32,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
