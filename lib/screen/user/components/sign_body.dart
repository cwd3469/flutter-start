import 'package:flex_flex_flex/screen/user/components/sign_input.dart';
import 'package:flex_flex_flex/screen/user/components/sign_stepbar.dart';
import 'package:flutter/material.dart';

class SignBody extends StatelessWidget {
  const SignBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(color: Colors.white),
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: const <Widget>[
            Text('회원가입',style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
              color: Colors.black,
            ),),
            SignStepbar(),
            SignInput()
          ],
        ));
  }
}
