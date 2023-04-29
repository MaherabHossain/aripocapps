import 'package:arepocapps/screens/amarican_player/americaan_player_view.dart';
import 'package:arepocapps/screens/questions.dart';
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
    print(index);
    final x = cos(angle) * radius;
    final y = sin(angle) * radius;
    List<dynamic> content = [
      ["images"],
      ["star"],
      ["The 5", "Principles"],
      ["The", "Divine", "Constitution", "And", "By-Laws"],
      ["The", "Moorish", "American", "Prayer"],
      ["The", "Warnings", "From", "Prophet"],
      ["The", "Koran", "Questionnaire"],
      ["The Holy", "Koran"],
    ];
    List<dynamic> onTap = [
      QuestionsScreen(),
      QuestionsScreen(),
      AmericalPlayerView(),
      QuestionsScreen(),
      QuestionsScreen(),
      QuestionsScreen(),
    ];
    return Center(
      child: Transform(
        transform: index == 1
            ? Matrix4.translationValues(0.0, 0.0, 0.0)
            : Matrix4.translationValues(x, y, 0.0),
        child: InkWell(
          onTap: () {
            print(index);
            if (index != 1 && index != 2) {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => onTap[index - 3]));
            }
          },
          child: Container(
            height: index == 1 ? 170 : 63,
            width: index == 1 ? 170 : 63,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: index != 1
                  ? index == 2
                      ? Colors.grey
                      : Color.fromARGB(255, 25, 162, 30)
                  : Color.fromARGB(255, 195, 47, 36),
            ),
            child: index == 1
                ? CircleAvatar(
                    backgroundImage: AssetImage("assets/drew_ali.jpeg"),
                  )
                : index == 2
                    ? ClipRRect(
                        borderRadius: BorderRadius.circular(60),
                        child: Image.asset(
                          "assets/star.png",
                          height: 80,
                          width: 80,
                        ),
                      )
                    : Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Center(
                            child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            for (int i = 0; i < content[index - 1].length; ++i)
                              Text(
                                content[index - 1][i],
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: index == 4
                                        ? 7
                                        : index == 7
                                            ? 8
                                            : 9),
                              )
                          ],
                        )),
                      ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 195, 47, 36),
      appBar: new AppBar(
        elevation: 0,
        title: new Text("Moorish American University"),
        backgroundColor: Colors.red,
      ),
      body: Stack(children: list()),
    );
  }
}
