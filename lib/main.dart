import 'package:flutter/material.dart';
import 'package:quzziapp/page/quizpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'QuzziApp',
      theme: ThemeData(
      scaffoldBackgroundColor: Colors.black,
      primaryColor: Colors.green
      ),
      home:const Quizpage() ,
    );
  }
}
