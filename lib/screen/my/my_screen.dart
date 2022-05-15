import 'package:flutter/material.dart';

import '../user/components/sign_body.dart';
import '../user/sign_screen.dart';

class MyScreen extends StatefulWidget {
  const MyScreen({Key? key}) : super(key: key);

  @override
  State<MyScreen> createState() => _MyScreenState();
}

class _MyScreenState extends State<MyScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SignBody()
    );
  }
}
