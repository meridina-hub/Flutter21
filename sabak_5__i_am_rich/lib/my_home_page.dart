import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffECB90B),
      appBar: AppBar(
        backgroundColor: Color(0xffECB90B),
        title: Center(child: Text('Тапшырма 4')),
      ),

      body: Center(
        child: Column(
          children: [
            Divider(color: Colors.black, thickness: 2),
            SizedBox(height: 60),
            Text(
              'I’m Rich',
              style: GoogleFonts.sofia(
                fontSize: 48,
                fontWeight: FontWeight.w400,
              ),
            ),
            Image.asset('assets/almaz.png'),
            ClipOval(
              child: SizedBox.fromSize(
                size: Size.fromRadius(38),
                child: Image.network(
                  'https://imgv3.fotor.com/images/slider-image/A-clear-image-of-a-woman-wearing-red-sharpened-by-Fotors-image-sharpener.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
