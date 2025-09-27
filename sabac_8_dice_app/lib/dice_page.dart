import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sabac_8_dice_app/widgets/custombutton.dart';
import 'package:sabac_8_dice_app/widgets/imagewidget.dart';

class MyDicePage extends StatefulWidget {
  const MyDicePage({super.key});

  @override
  State<MyDicePage> createState() => _MyDicePageState();
}

class _MyDicePageState extends State<MyDicePage> {
  //Diceтарды байлоо максатында тузулгон озгормолор
  int leftDiceNumber = 3;
  int rightDiceNumber = 6;

  // Дарт математикадан келген рандом классты байлоо учун функция
  void rollDice() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(child: Text('Тапшырма 5')),
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/images.jpeg'),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Row(
                  children: [
                    Expanded(
                      child: ImageWidget(
                        image: 'assets/die_face_$leftDiceNumber.svg',
                      ),
                    ),
                    Expanded(
                      child: ImageWidget(
                        image: 'assets/die_face_$rightDiceNumber.svg',
                      ),
                    ),
                  ],
                ),
              ),
              CustomButton(onPressed: rollDice),
            ],
          ),
        ),
      ),
    );
  }
}
