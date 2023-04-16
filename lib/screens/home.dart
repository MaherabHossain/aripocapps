import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'dart:math';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<int> data = [
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    8,
  ];

  double radius = 125.0;

  List<Widget> list() {
    final double firstItemAngle = pi;
    final double lastItemAngle = pi;
    final double angleDiff = (firstItemAngle + lastItemAngle) / 7;
    double currentAngle = firstItemAngle;

    return data.map((int index) {
      currentAngle += angleDiff;
      return _radialListItem(currentAngle, index);
    }).toList();
  }

  Widget _radialListItem(double angle, int index) {
    final x = cos(angle) * radius;
    final y = sin(angle) * radius;
    List<String> content = [
      "image",
      "star",
      "The 5 Principle",
      "Earth Salvations",
      "Divine    prophecies of prophet ",
      "Warnings from prophet",
      "101 question",
      "The Holy Koran ",
    ];
    return Center(
      child: Transform(
        transform: index == 1
            ? Matrix4.translationValues(0.0, 0.0, 0.0)
            : Matrix4.translationValues(x, y, 0.0),
        child: Container(
          height: index == 1 ? 140 : 80,
          width: index == 1 ? 140 : 80,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color:
                  index != 1 ? Color.fromARGB(255, 210, 21, 7) : Colors.white),
          child: index == 1
              ? ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset(
                    "assets/drew_ali.jpeg",
                    height: 140,
                    width: 140,
                  ),
                )
              : index == 2
                  ? ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image.asset(
                        "assets/star.png",
                        height: 80,
                        width: 80,
                      ),
                    )
                  : Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Center(
                          child: Text(
                        content[index - 1],
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 9),
                      )),
                    ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("The Moorish America"),
        backgroundColor: Colors.red,
      ),
      body: Stack(children: list()),
    );
  }
}
