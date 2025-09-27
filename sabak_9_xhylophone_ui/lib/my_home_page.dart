import 'package:flutter/material.dart';
import 'package:sabak_9_xhylophone_ui/widgets/piano_key.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(),
      body: Column(
        children: [
          PianoKey(colors: Colors.red),
          PianoKey(colors: Colors.yellow),
          PianoKey(colors: Colors.blue),
          PianoKey(colors: Color(0xff2E968C)),
          PianoKey(colors: Color(0xff2996F5)),
          PianoKey(colors: Color(0xff9B28B1)),
          PianoKey(colors: Color(0xff4CB050)),
          PianoKey(colors: Colors.red),
          PianoKey(colors: Colors.yellow),
        ],
      ),
    );
  }

  AppBar myAppBar() {
    return AppBar(
      backgroundColor: Color(0xff000000),
      title: Center(
        child: Text(
          'Flutter  Xylophone',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
