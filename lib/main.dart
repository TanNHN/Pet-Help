import 'package:flutter/material.dart';

import 'package:pet_help/view/AddPet.dart';
import 'package:pet_help/view/HomePage.dart';
import 'package:pet_help/view/findRescue.dart';
import 'package:pet_help/view/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: splash_screen(
            // title: 'Post',
            ));
  }
}
