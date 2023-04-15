// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var questions = [
    {"question": "Who made you?", "ans": "ALLAH."},
    {
      "question": "Who is ALLAH?",
      "ans": "ALLAH is the Creator of the Universe"
    },
    {"question": "Can we see Him?", "ans": "No."},
    {"question": "Who made you?", "ans": "ALLAH."},
    {
      "question": "Who is ALLAH?",
      "ans": "ALLAH is the Creator of the Universe."
    },
    {"question": "Can we see Him?", "ans": "No."},
    {"question": "Who made you?", "ans": "ALLAH."},
    {
      "question": "Where is the nearest place we can meet Him?",
      "ans": "In the heart."
    },
    {
      "question": "Who is Noble Drew Ali?",
      "ans": "He Is Moorish Science Temple of America Prophet."
    },
    {
      "question": "What is the duty of a Prophet?",
      "ans": "To save nations from the wrath of ALLAH."
    },
    {
      "question": "Who is ALLAH?",
      "ans": "ALLAH is the Creator of the Universe"
    },
    {"question": "Can we see Him?", "ans": "No."},
    {
      "question":
          "Who is the founder of the MOORISH SCIENCE TEMPLE OF AMERICA?",
      "ans": "Noble Drew Ali."
    },
    {
      "question":
          "What year was the MOORISH SCIENCE TEMPLE OF AMERICA founded?",
      "ans": "1913 A.D."
    },
    {"question": "Where?", "ans": "Newark, New Jersey."},
    {
      "question": "Where was Noble Drew Ali born?",
      "ans": "In the State of North Carolina, 1886."
    },
    {"question": "What is his nationality?", "ans": "Moorish American."},
    {"question": "What is your nationality?", "ans": "Moorish American."},
    {
      "question": "Why are we Moorish Americans?",
      "ans": "Because we are descendants of Moroccans and born in America."
    },
    {
      "question":
          "For what purpose was the Moorish Science Temple of America founded?",
      "ans": "For the uplifting of fallen humanity."
    },
    {
      "question": "How did the Prophet begin to uplift the Moorish Americans?",
      "ans": "By teaching them to be themselves."
    },
    {"question": "What is our religion?", "ans": "Islamism."},
    {
      "question": "Who is ALLAH?",
      "ans": "ALLAH is the Creator of the Universe"
    },
    {"question": "Can we see Him?", "ans": "No."},
    {"question": "Who made you?", "ans": "ALLAH."},
    {
      "question": "Who is ALLAH?",
      "ans": "ALLAH is the Creator of the Universe"
    },
    {"question": "Can we see Him?", "ans": "No."},
    {"question": "Who made you?", "ans": "ALLAH."},
    {
      "question": "Who is ALLAH?",
      "ans": "ALLAH is the Creator of the Universe"
    },
    {"question": "Can we see Him?", "ans": "No."},
    {"question": "Who made you?", "ans": "ALLAH."},
    {
      "question": "Who is ALLAH?",
      "ans": "ALLAH is the Creator of the Universe"
    },
    {"question": "Can we see Him?", "ans": "No."},
    {"question": "Who made you?", "ans": "ALLAH."},
    {
      "question": "Who is ALLAH?",
      "ans": "ALLAH is the Creator of the Universe"
    },
    {"question": "Can we see Him?", "ans": "No."},
    {"question": "Who made you?", "ans": "ALLAH."},
    {
      "question": "Who is ALLAH?",
      "ans": "ALLAH is the Creator of the Universe"
    },
    {"question": "Can we see Him?", "ans": "No."},
    {"question": "Who made you?", "ans": "ALLAH."},
    {
      "question": "Who is ALLAH?",
      "ans": "ALLAH is the Creator of the Universe"
    },
    {"question": "Can we see Him?", "ans": "No."},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("101 Questions"),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              for (int i = 0; i < questions.length; ++i)
                _buildQuestions(questions[i], i)
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildQuestions(question, index) {
    return ExpansionTile(
      title: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.all(Radius.circular(50)),
            ),
            child: Container(
              padding: EdgeInsets.all(10),
              child: Text(
                index <= 8 ? "0${index + 1}" : "${index + 1}",
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              ),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          SizedBox(
              width: MediaQuery.of(context).size.width / 2,
              child: Text(question['question']))
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
