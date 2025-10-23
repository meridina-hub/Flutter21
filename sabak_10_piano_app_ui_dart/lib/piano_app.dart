import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:sabak_10_piano_app_ui_dart/widgets/black_piano_key.dart';
import 'package:sabak_10_piano_app_ui_dart/widgets/white_piano_key.dart';

class PianoApp extends StatelessWidget {
  const PianoApp({super.key});

  @override
  Widget build(BuildContext context) {
    AudioPlayer nota = AudioPlayer();
    return Scaffold(
      appBar: myAppBar(),
      body: Column(
        children: [
          Spacer(),
          Stack(
            children: [
              Row(
                children: [
                  WhitePianoKey(
                    text: 'f1',
                    onPressed: () => nota.play(AssetSource('nota/do.wav')),
                  ),
                  WhitePianoKey(
                    text: 'f2',
                    onPressed: () => nota.play(AssetSource('nota/re.wav')),
                  ),
                  WhitePianoKey(
                    text: 'f3',
                    onPressed: () => nota.play(AssetSource('nota/mi.wav')),
                  ),
                  WhitePianoKey(
                    text: 'f4',
                    onPressed: () => nota.play(AssetSource('nota/fa.wav')),
                  ),
                  WhitePianoKey(
                    text: 'f5',
                    onPressed: () => nota.play(AssetSource('nota/so.wav')),
                  ),
                  WhitePianoKey(
                    text: 'f6',
                    onPressed: () => nota.play(AssetSource('nota/la.wav')),
                  ),
                  WhitePianoKey(
                    text: 'f7',
                    onPressed: () => nota.play(AssetSource('nota/si.wav')),
                  ),
                  WhitePianoKey(
                    text: 'f1',
                    onPressed: () => nota.play(AssetSource('nota/do.wav')),
                  ),
                  WhitePianoKey(
                    text: 'f2',
                    onPressed: () => nota.play(AssetSource('nota/si.wav')),
                  ),
                  WhitePianoKey(
                    text: 'f3',
                    onPressed: () => nota.play(AssetSource('nota/la.wav')),
                  ),
                  WhitePianoKey(
                    text: 'f4',
                    onPressed: () => nota.play(AssetSource('nota/so.wav')),
                  ),
                  WhitePianoKey(
                    text: 'f2',
                    onPressed: () => nota.play(AssetSource('nota/fa.wav')),
                  ),
                  WhitePianoKey(
                    text: 'f3',
                    onPressed: () => nota.play(AssetSource('nota/mi.wav')),
                  ),
                ],
              ),
              BlackPianoKey(left: 35, text: 'f1'),
              BlackPianoKey(left: 90, text: 'f2'),
              BlackPianoKey(left: 200, text: 'f3'),
              BlackPianoKey(left: 255, text: 'f4'),
              BlackPianoKey(left: 310, text: 'f5'),
              BlackPianoKey(left: 420, text: 'f6'),
              BlackPianoKey(right: 55, text: 'f7'),
              BlackPianoKey(right: 110, text: 'f1'),
              BlackPianoKey(right: 220, text: 'f2'),
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
