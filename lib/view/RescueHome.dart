import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pet_help/components/BottomNaviBar.dart';
import 'package:pet_help/components/list_header.dart';
import 'package:pet_help/components/rescue_home_list.dart';

class RescueHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text(
          'Home',
          style: GoogleFonts.lato(
              fontStyle: FontStyle.normal, color: Colors.white, fontSize: 30),
        ),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(253, 158, 121, 1),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("src/image/background.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            HeaderList(),
            Expanded(child: RescueHomeList()),
            BottomNaviBar()
          ],
        ),
      ),
    );
  }
}
