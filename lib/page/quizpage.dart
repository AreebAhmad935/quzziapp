import 'package:flutter/material.dart';

class Quizpage extends StatefulWidget {
  const Quizpage({Key? key}) : super(key: key);

  @override
  State<Quizpage> createState() => _QuizpageState();
}

class _QuizpageState extends State<Quizpage> {
  List<Icon> scorekeeper = [
    // const Icon(
    //   Icons.check,
    //   color: Colors.green,
    // ),
    // const Icon(
    //   Icons.close,
    //   color: Colors.red,
    // ),
    // const Icon(
    //   Icons.check,
    //   color: Colors.green,
    // ),
  ];
  List<String> question = [
    'flutter is a open soruce project.',
    'flutter is Software Development kit.',
    'Is Dart Language is HLL.',
  ];
  int questionumber = 0;

  List<bool> answers = [
    true,
    true,
    false,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('QuzziApp'),
        backgroundColor: Colors.grey,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Center(
                child: Text(
                  question[questionumber],
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.green,
                ),
                onPressed: () {
                  setState(() {
                    questionumber++;
                  });
                  bool correctanswer = answers[questionumber];
                  if (correctanswer == true) {
                    print('user its right');
                  } else {
                    (
                      print('user is wrong'));
                  }
                },
                child: const Text('Ture'),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.red,
                ),
                onPressed: () {
                  bool correctanswer = answers[questionumber];
                  if (correctanswer == false) {
                    print('user its right');
                  } else {
                    (
                      print('user is wrong'));
                  }
                  setState(() {
                    questionumber++;
                  });
                },
                child: const Text('False'),
              ),
            ),
          ),
          Row(
            children: scorekeeper,
          )
        ],
      ),
    );
  }
}
