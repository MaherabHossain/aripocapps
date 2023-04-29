import 'package:arepocapps/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AmericalPlayerView extends StatefulWidget {
  const AmericalPlayerView({super.key});

  @override
  State<AmericalPlayerView> createState() => _AmericalPlayerViewState();
}

class _AmericalPlayerViewState extends State<AmericalPlayerView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppConstants.americanPlayerTitle),
        backgroundColor: AppConstants.appBarColor,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Text(
                  AppConstants.americanPlayerTitle,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  AppConstants.americaPlayerDdescription,
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
