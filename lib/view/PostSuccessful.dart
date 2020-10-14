import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:pet_help/components/BottomNaviBar.dart';
import 'package:pet_help/components/listView.dart';
import 'package:pet_help/components/list_header.dart';
import 'package:pet_help/view/loadimg.dart';
import 'package:pet_help/view/login_page.dart';
import 'package:pet_help/view/proflie.dart';

import 'AddPet.dart';

class PostSuccessful extends StatelessWidget {
  final String title;

  PostSuccessful ({Key key, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        // title: Text(
        //   'POST',
        //   style: GoogleFonts.lato(
        //       fontStyle: FontStyle.normal, color: Colors.white, fontSize: 30),
        // ),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(253, 158, 121, 1),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () { Navigator.pop(context); },

            );
          },
        ),
      ),

      // drawer: Drawer(
      //   // Add a ListView to the drawer. This ensures the user can scroll
      //   // through the options in the drawer if there isn't enough vertical
      //   // space to fit everything.
      //   // child: ListView(
      //   //   // Important: Remove any padding from the ListView.
      //   //   padding: EdgeInsets.zero,
      //   //   children: <Widget>[
      //   //     // Container(
      //   //     //   color: Color.fromRGBO(253, 158, 121, 1),
      //   //     //   height: 200,
      //   //     //   child: Row(
      //   //     //     children: <Widget>[
      //   //     //       Padding(
      //   //     //         padding: const EdgeInsets.all(8.0),
      //   //     //         child: Container(
      //   //     //           width: 75,
      //   //     //           height: 75,
      //   //     //           padding: EdgeInsets.all(15),
      //   //     //         ),
      //   //     //       ),
      //   //     //
      //   //     //     ],
      //   //     //   ),
      //   //     // ),
      //   //   ],
      //   // ),
      // ),
      body: Container(
        // decoration: new BoxDecoration(color: Colors.red),
        decoration: BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
            image: AssetImage("src/image/PostSuccessful.png"), // fit: BoxFit.cover,
    ),
          ),
        // ),
        // child: Container(
        //
        //     // HeaderList(),
        //     // Image.asset('src/image/PostSuccessful.png'),
        //     // Expanded(child: ListViewPet())
        //     // ,BottomNaviBar()
        // ),
      ),
    );
  }
}