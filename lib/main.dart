import 'package:flutter/material.dart';
import 'package:quiz_project/view/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Home(),

      // routes: {
      //   "/home":(context)=>Home(),
      //   "/home":(context)=>Home(),
      //   "/home":(context)=>Home(),
      //
      // },

    );
  }
}

