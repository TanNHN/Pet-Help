import 'package:flutter/material.dart';
import 'package:pet_help/components/PostDetail.dart';
import 'package:pet_help/components/listview.dart';


import 'package:pet_help/view/AddPet.dart';
import 'package:pet_help/view/HomePage.dart';
import 'package:pet_help/view/PetProfile.dart';
import 'package:pet_help/view/RescueHome.dart';
import 'package:pet_help/view/RescuePetManagement.dart';

import 'package:pet_help/view/findRescue.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home:PostDetail());
  }
}
