import 'package:flutter/material.dart';

class BlackPianoKey extends StatelessWidget {
  const BlackPianoKey({super.key, this.left, this.right, required this.text});
  final double? left;
  final double? right;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: left,
      right: right,
      child: Container(
        width: 38.7,
        height: 127.64,
        decoration: BoxDecoration(
          color: Color(0xff323A56),
          border: Border.all(color: Color(0xff232A3D)),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(5),
            bottomRight: Radius.circular(5),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Center(
              child: Text(
                text,
                style: TextStyle(
                  color: Color(0xffFFFFFF),
                  fontSize: 19,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
