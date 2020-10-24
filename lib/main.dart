import 'package:flutter/material.dart';
import 'package:pet_help/components/listview.dart';

import 'package:pet_help/view/AddPet.dart';
import 'package:pet_help/view/AddPetAfterRes.dart';
import 'package:pet_help/view/AdoptForm.dart';
import 'package:pet_help/view/AdoptRequest.dart';
import 'package:pet_help/view/AdoptRequestList.dart';
import 'package:pet_help/view/Contact.dart';
import 'package:pet_help/view/HomePage.dart';
import 'package:pet_help/view/Login.dart';
import 'package:pet_help/view/PetHealthReportDetail.dart';
import 'package:pet_help/view/UserPetManagement.dart';
import 'package:pet_help/view/RescuePostManagement.dart';
import 'package:pet_help/view/PetReportForm.dart';
import 'package:pet_help/view/PostDetail.dart';
import 'package:pet_help/view/UserPostDetail.dart';
import 'package:pet_help/view/GMap.dart';
import 'package:pet_help/view/PetHealthReportList.dart';
import 'package:pet_help/view/PetProfile.dart';
import 'package:pet_help/view/RescueHome.dart';
import 'package:pet_help/view/RescuePetManagement.dart';
import 'package:pet_help/view/findAdopter.dart';

import 'package:pet_help/view/findRescue.dart';
import 'package:pet_help/view/loadimg.dart';
import 'package:pet_help/view/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

        home: AddPetAfterRes(
            // title: 'Post',
            ));

  }
}
