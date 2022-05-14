import 'package:flex_flex_flex/screen/main/main_screen.dart';
import 'package:flutter/material.dart';


class Person {
  int age;
  String name;
  bool isLeftHand;
  Person(this.age, this.name, this.isLeftHand);
}

void main() {
  runApp(const HeroApp());
}

class HeroApp extends StatelessWidget {
  const HeroApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Transition Demo',
      home: MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: MainScreen(),
    );
  }
}



// stless
