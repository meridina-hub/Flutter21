import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:sabak_4_counter_app_stlw_stfw_navigator_push/third_page.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key, required this.count});
  final int count;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),

      body: Center(
        child: Column(
          children: [
            Text((count.toString())),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Thirdpage()),
                );
              },
              child: Text('third page'),
            ),
          ],
        ),
      ),
    );
  }
}
