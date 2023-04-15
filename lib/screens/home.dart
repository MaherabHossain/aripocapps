import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Widget bigCircle = new Container(
      width: 300.0,
      height: 300.0,
      decoration: new BoxDecoration(
        color: Colors.orange,
        shape: BoxShape.circle,
      ),
    );

    return new Material(
      //color: Colors.black,
      child: new Center(
        child: new Stack(
          children: <Widget>[
            bigCircle,
            new Positioned(
              child: new CircleButton(),
              top: 10.0,
              left: 130.0,
            ),
            new Positioned(
              child: new CircleButton(),
              top: 120.0,
              left: 10.0,
            ),
            new Positioned(
              child: new CircleButton(),
              top: 120.0,
              right: 10.0,
            ),
            new Positioned(
              child: new CircleButton(),
              top: 240.0,
              left: 130.0,
            ),
            new Positioned(
              child: new CircleButton(),
              top: 120.0,
              left: 130.0,
            ),
          ],
        ),
      ),
    );
  }
}

class CircleButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double size = 50.0;

    return new InkResponse(
      child: new Container(
        width: size,
        height: size,
        decoration: new BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
        ),
        child: new Icon(
          Icons.add,
          color: Colors.black,
        ),
      ),
    );
  }
}
