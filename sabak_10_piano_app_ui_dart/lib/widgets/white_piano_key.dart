import 'package:flutter/material.dart';

class WhitePianoKey extends StatelessWidget {
  const WhitePianoKey({super.key, required this.text, this.onPressed});
  final String text;

  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shadowColor: Colors.greenAccent,
        elevation: 3,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(5),
            topRight: Radius.circular(5),
          ),
        ),
        minimumSize: Size(54, 217.93),
      ),

      onPressed: () {},
      child: Column(
        children: [
          SizedBox(height: 150),
          Text(
            text,
            style: TextStyle(
              color: Color(0xff000000),
              fontSize: 19,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
/**Container(
      width: 54.91,
      height: 217.93,
      decoration: BoxDecoration(
        color: Color(0xffE4E4E4),
        border: Border.all(color: Color(0xffCACACA)),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(5),
          topRight: Radius.circular(5),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Center(
            child: Text(
              'f1',
              style: TextStyle(
                color: Color(0xff000000),
                fontSize: 19,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    ); */