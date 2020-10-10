import 'package:flutter/material.dart';

import 'package:pet_help/view/rescue_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: rescue_page(
            // title: 'Post',
            ));
  }
}
