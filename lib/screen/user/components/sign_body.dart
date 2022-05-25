import 'package:flex_flex_flex/screen/user/components/sign_input.dart';
import 'package:flex_flex_flex/screen/user/components/sign_stepbar.dart';
import 'package:flutter/material.dart';

class SignBody extends StatelessWidget {
  const SignBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(12),
        decoration: const BoxDecoration(color: Colors.white),
        width: 400,
        child: ListView(
          children: [
            const Text('회원가입',style: TextStyle(fontWeight: FontWeight.bold , fontSize: 20),),
            const SizedBox(height:20),
            SignStepbar(),
            const SizedBox(height:20),
            SignInput()
          ],
        ) );
  }
}
