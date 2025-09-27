import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sabak_7_text_form_field/core/theme.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff056C5C),
      appBar: AppBar(
        title: Center(
          child: Text(
            'Тапшырма 4',
            style: MyTheme().mylighttheme.textTheme.displayLarge,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Text(
              'Meridina Keldibek',
              style: GoogleFonts.pacifico(
                color: Colors.white,
                fontSize: 48,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Container(
            child: Center(
              child: Text(
                'Flutter Developer',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          Divider(indent: 35, endIndent: 35, height: 1),
          SizedBox(height: 23.5),
          TextField(
            decoration: InputDecoration(
              fillColor: Colors.white,
              filled: true,
              border: OutlineInputBorder(),
              hintText: '+700 996 344',
            ),
          ),
          SizedBox(height: 20),
          TextField(
            decoration: InputDecoration(
              fillColor: Colors.white,
              filled: true,
              border: OutlineInputBorder(),
              hintText: 'meridinakeldibek@gmail.com',
            ),
          ),
        ],
      ),
    );
  }
}
