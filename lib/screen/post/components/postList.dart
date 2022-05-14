import 'package:flutter/material.dart';
import './postItem.dart';

// 게시판 게시물 PostItem
class PostItems extends StatelessWidget {
  const PostItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: ListView(
          padding: const EdgeInsets.only(top: 20, bottom: 8),
          children: const <Widget>[
            PostTitle(),
            PopularityItem(),
            PostItem(),
            PostItem(),
            PostItem(),
            PostItem(),
            PostItem(),
            PostItem(),
            PostItem(),
          ],
        ));
  }
}


