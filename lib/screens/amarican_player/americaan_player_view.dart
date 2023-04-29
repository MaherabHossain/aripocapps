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
      ),
    );
  }
}
