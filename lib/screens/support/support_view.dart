// ignore_for_file: prefer_const_constructors

import 'package:arepocapps/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SupportView extends StatefulWidget {
  const SupportView({super.key});

  @override
  State<SupportView> createState() => _SupportViewState();
}

class _SupportViewState extends State<SupportView> {
  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        "question": "Moorish Ammerican University App is available on:",
        "ans": "Android and IOS"
      },
      {"question": "Download this app on:", "ans": "Google Play Store"},
      {"question": "What is Go Noble", "ans": "Go Noble is premium upgrade"},
      {
        "question": "Why Go Noble",
        "ans":
            '“Go Noble” Moors only, will be able to communicate with other Moors in a community chat group.  Access to people who will offer their services to the community. There will be a lot of exclusive content and information shared that will be unavailable anywhere else.'
      },
      {
        "question": "Can i opt out from my membership data being listed?",
        "ans": "Yes"
      },
      {
        "question":
            "Can i opt out from being contacted my members of the community?",
        "ans": "Yes"
      }
    ];
    print("hello");
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 195, 47, 36),
      appBar: AppBar(
        title: Text("Support"),
        backgroundColor: Colors.red,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              for (int i = 0; i < questions.length; ++i)
                _buildQuestions(questions[i]),
              SizedBox(
                height: 10,
              ),
              Text(
                "ADVERTISE WITH US",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                  "Interested in advertising on the Moorish American University app please email us: moorishamericanuniversity@proton.me"),
              Text(
                "Contact",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 10,
              ),
              Text(AppConstants.contactEamil)
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildQuestions(question) {
    return ExpansionTile(
      iconColor: Colors.black,
      textColor: Colors.black,
      title: Row(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width / 1.5,
            child: Text(question['question']),
          )
        ],
      ),
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        ListTile(
          title: Row(
            children: [
              Text(
                "ANS : ",
                style: TextStyle(fontWeight: FontWeight.w700),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 1.6,
                child: Text(
                  question['ans'],
                  style: TextStyle(),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
