import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int a = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text('Тапшырма 4'))),
      body: Column(
        children: [
          Text('Hello Flutter'),
          Text('$a'),
          ElevatedButton(
            onPressed: () {
              setState(() {
                a++;
              });
            },
            child: Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
