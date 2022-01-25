import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _counter = 0;
  bool change = false;
  List listColors = [Colors.red, Colors.green, Colors.yellow];
  Random random = new Random();
  int color = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          color: change ? listColors[color] : Colors.white,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "$_counter",
                  style: TextStyle(fontSize: 50),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          _counter--;

                          if (_counter % 2 == 0 && _counter != 0) {
                            change = !change;
                            color = random.nextInt(3);
                          } else {
                            change = false;
                          }
                        });
                      },
                      child: Text(
                        "-",
                        style: TextStyle(color: Colors.white, fontSize: 35),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          _counter++;

                          if (_counter % 2 == 0 && _counter != 0) {
                            change = !change;
                            color = random.nextInt(3);
                          } else {
                            change = false;
                          }
                        });
                      },
                      child: Text(
                        "+",
                        style: TextStyle(color: Colors.white, fontSize: 35),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
