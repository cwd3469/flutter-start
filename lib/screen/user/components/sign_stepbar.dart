// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class SignStepbar extends StatefulWidget {
  SignStepbar({Key? key}) : super(key: key);
  @override
  _SignStepbarState createState() => _SignStepbarState();
}

class _SignStepbarState extends State<SignStepbar> {
  int currentStep = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height:80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width:180,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
	            textBaseline: TextBaseline.ideographic,
              children: [
                Container(
                  width: 20,
                  height:20,
                  margin: const EdgeInsets.only(bottom: 5 ),
                  child:ElevatedButton(
                      child: const Text(
                        '1',
                      textAlign: TextAlign.center, 
                      style: TextStyle(fontSize: 12, ),
                      ),
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          minimumSize:const Size(15, 15),
                          padding:EdgeInsets.all(0),
                          shape: const CircleBorder(), primary: Color(0xffB863FB) 
                          
                      ),
                    ),
                ),
                Container(
                  width:200,
                  height:3,
                  margin: EdgeInsets.only(bottom:6),
                  decoration: const BoxDecoration(
                    color: Color(0xffB863FB)
                  ),
                ),
                Text('학교 인증',style: TextStyle(fontWeight:FontWeight.bold),),
                SizedBox(height: 4),
                Text('학교 인증을 위해 정보를 입력하세요.',style: TextStyle(fontSize: 10))
              ],
            ) ,
          ) ,
          SizedBox(
            width:70,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
	            textBaseline: TextBaseline.ideographic,
              children: [
                Container(
                  width: 20,
                  height:20,
                  margin: EdgeInsets.only(bottom: 5),
                  child:ElevatedButton(
                      child: const Text(
                        '2',
                      textAlign: TextAlign.center, 
                      style: TextStyle(fontSize: 12, color: Color(0xff959595)),
                      ),
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          minimumSize:const Size(15, 15),
                          padding:EdgeInsets.all(0),
                          shape: const CircleBorder(), primary: Color(0xffE8E8E8) 
                      ),
                    ),
                ),
                Container(
                  width:70,
                  height:3,
                  margin: EdgeInsets.only(bottom:6),
                  decoration: const BoxDecoration(
                    color: Color(0xffE8E8E8)
                  ),
                ),
                const Text('학교 정보',style: TextStyle(
                  fontWeight:FontWeight.bold,
                  color: Color(0xffE8E8E8), 
                  fontSize: 12
                )),
              ],
            ) ,
          ),  
          Container(
            width:70,
           child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
	            textBaseline: TextBaseline.ideographic,
              children: [
                Container(
                  width: 20,
                  height:20,
                  margin: EdgeInsets.only(bottom: 5),
                  child:ElevatedButton(
                      child: const Text(
                        '3',
                      textAlign: TextAlign.center, 
                      style: TextStyle(fontSize: 12,color:Color(0xff959595)),
                      ),
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          minimumSize:const Size(15, 15),
                          padding:const EdgeInsets.all(0),
                          shape: const CircleBorder(), primary: Color(0xffE8E8E8) 
                      ),
                    ),
                ),
                Container(
                  width:70,
                  height:3,
                  margin: EdgeInsets.only(bottom:6),
                  decoration: const BoxDecoration(
                    color: Color(0xffE8E8E8)
                  ),
                ),
                const Text('학교 정보',style: TextStyle(
                  fontWeight:FontWeight.bold,
                  color: Color(0xffE8E8E8), 
                  fontSize: 12
                )),
              ],
            ) ,
          )       
        ],
      ),
    );
  }
}
