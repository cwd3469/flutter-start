// ignore_for_file: deprecated_member_use, unnecessary_const

import 'package:flutter/material.dart';

class SignInput extends StatelessWidget {
  const SignInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 300,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start, 
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Container(
            child: const Text(
              '학교 이메일',
              textAlign: TextAlign.left,
            ),
          ),
          const SizedBox(height:5),
          MyStatefulWidget()
          ]));
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    BorderRadius borderRadius;
    return Container(
      height: 40,
      child: Row(
      children: [
        const Flexible(
            child: TextField(
              style: TextStyle(
                  fontSize: 12.0,
                  height: 0,
                  color: Colors.black                  
                ),
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 0,horizontal: 10),
                  
                  enabledBorder:const OutlineInputBorder(
                    borderSide:const BorderSide(width: 1, color: Color.fromARGB(255, 218, 218, 218)),
                    borderRadius: BorderRadius.all(Radius.circular(5))
                  ),
                  focusedBorder:const OutlineInputBorder(
                    borderSide: const BorderSide(width: 1, color: Color(0xFFC682FC)),
                  ),
                  focusColor: Color(0xFFC682FC)
                ),
                )
              ),
              const SizedBox(width: 10,),
              RaisedButton(
                color: Colors.white,
                elevation:0,
                shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(5),side: BorderSide(color: Color(0xFFB6B6B6),width: 1)),
                onPressed: () {},
                child: const Text(
                  '인증하기',
                  style: TextStyle(fontSize: 12),
                ),
              )
            ],
          ),
    ); 
  }
}
