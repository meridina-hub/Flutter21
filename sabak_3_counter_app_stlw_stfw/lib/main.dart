import 'package:flutter/material.dart';
import 'package:sabak_3_counter_app_stlw_stfw/core/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int count = 0;

  void _incrementCounter() {
    setState(() {
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyTheme().lightTheme.scaffoldBackgroundColor,
      appBar: AppBar(
        backgroundColor: MyTheme().lightTheme.appBarTheme.backgroundColor,
        title: Text(
          'Тапшырма 1',
          style: MyTheme().lightTheme.textTheme.displayLarge,
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 225,
              height: 44,
              decoration: BoxDecoration(
                  color: Colors.grey, borderRadius: BorderRadius.circular(10)),
              child: Center(
                  child: Text(
                "Сан:$count",
                style: MyTheme().lightTheme.textTheme.displayLarge,
              )),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      count++;
                    });
                  },
                  child: Container(
                      width: 80,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Color(0xff0D61AE),
                          borderRadius: BorderRadius.circular(10)),
                      child: Icon(
                        Icons.add,
                        color: MyTheme().lightTheme.iconTheme.color,
                        size: MyTheme().lightTheme.iconTheme.size,
                      )),
                ),
                SizedBox(width: 40),
                InkWell(
                  onTap: () {
                    setState(() {
                      count--;
                    });
                  },
                  child: Container(
                    width: 80,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Color(0xff0D61AE),
                        borderRadius: BorderRadius.circular(10)),
                    child: Icon(
                      Icons.remove,
                      color: MyTheme().lightTheme.iconTheme.color,
                      size: MyTheme().lightTheme.iconTheme.size,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
