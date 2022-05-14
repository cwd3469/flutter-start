import 'package:flutter/material.dart';
import 'package:flex_flex_flex/screen/post/components/postItem.dart';
import 'package:flex_flex_flex/screen/post/components/postList.dart';

class PostScreen extends StatefulWidget {
  const PostScreen({Key? key}) : super(key: key);

  @override
  State<PostScreen> createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        appBar: PostAppbar(),
        body: PostItems(),
    );
  }
}
