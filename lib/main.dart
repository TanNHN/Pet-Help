import 'package:flutter/material.dart';

import 'package:pet_help/view/AddPet.dart';
import 'package:pet_help/view/AdoptForm.dart';
import 'package:pet_help/view/AdoptRequest.dart';
import 'package:pet_help/view/AdoptRequestList.dart';
import 'package:pet_help/view/HomePage.dart';
import 'package:pet_help/view/PetHealthReport.dart';
import 'package:pet_help/view/PetReport.dart';
import 'package:pet_help/view/PostDetail.dart';
import 'package:pet_help/view/ViewPetReportList.dart';
import 'package:pet_help/view/findRescue.dart';
import 'package:pet_help/view/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: MyHomePage(
            // title: 'Post',
            ));
  }
}
