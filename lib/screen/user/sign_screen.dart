// ignore_for_file: deprecated_member_use

import 'package:flex_flex_flex/screen/user/components/sign_body.dart';
import 'package:flutter/material.dart';
import '../post/components/postItem.dart';
import 'components/sign_stepbar.dart';


class SignUpRoute extends StatelessWidget {
  const SignUpRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      appBar: const SignAppBar(),
      body: const SignBody()
    );
  }
}

class SignAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
    Size get preferredSize => const Size.fromHeight(50);
    const SignAppBar({ Key? key }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        leading:null,
        actions: [
          RaisedButton(
            color:Colors.white,
            focusColor: Colors.white,
            hoverColor:Colors.white,
            elevation: 0,
            hoverElevation: 0,
            focusElevation: 0,
            highlightElevation: 0,
            onPressed: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.close),
          ),
        ] 
    );
  }
}