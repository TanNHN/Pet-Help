import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:pet_help/components/BottomNaviBar.dart';
import 'package:pet_help/components/listView.dart';
import 'package:pet_help/components/list_header.dart';
import 'package:pet_help/view/loadimg.dart';
import 'package:pet_help/view/login_page.dart';
import 'package:pet_help/view/proflie.dart';

import 'HomePage.dart';

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
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios, color: Colors.white),
            onPressed: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) => MyHomePage(),
              ));
            }),
      ),

      body: Container(
        child: Stack(
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              child: Image.asset(
                'src/image/PostSuccessful.png',
                fit: BoxFit.cover,
              ),
            ),
            Container(
                alignment: Alignment.topCenter,
                child: Text(
                  'Your request has been sent to SAR Rescue Center. We will respond to  you as soon as possible.',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.blue, fontSize: 22.0),
                )),
            Container(
                alignment: Alignment.bottomCenter,
                child: Text(
                  'Thanks for your kindness !!!',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Color.fromRGBO(253, 158, 121, 1), fontWeight: FontWeight.bold, fontSize: 22.0),
                )),

          ],
        ),

    //     decoration: BoxDecoration(
    //       color: Colors.white,
    //       image: DecorationImage(
    //         image: AssetImage("src/image/PostSuccessful.png"), // fit: BoxFit.cover,
    // ),
    //       ),


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

