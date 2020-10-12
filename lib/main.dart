import 'package:flutter/material.dart';
import 'package:pet_help/view/PostDetail.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: PostDetail(
            // title: 'Post',
            ));
  }
}
