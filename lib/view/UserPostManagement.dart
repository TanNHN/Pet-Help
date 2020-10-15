import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:pet_help/components/BottomNaviBar.dart';
import 'package:pet_help/components/listView.dart';
import 'package:pet_help/components/list_header.dart';
import 'package:pet_help/components/rescue_home_list.dart';
import 'package:pet_help/view/HomePage.dart';
import 'package:pet_help/view/RescueHome.dart';
import 'package:pet_help/view/loadimg.dart';
import 'package:pet_help/view/login_page.dart';
import 'package:pet_help/view/proflie.dart';

import 'AddPet.dart';

class UserPostManagement extends StatelessWidget {
  final String title;

  UserPostManagement({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text(
          'Bài Post của tôi',
        ),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(253, 158, 121, 1),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => MyHomePage(),
                ));
              },
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
        decoration: BoxDecoration(),
        child: Column(
          children: [
            HeaderList(),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Container(
                      width: double.infinity,
                      child: Row(children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: <Widget>[
                              Image.asset(
                                'src/image/rescue_cat3.jpg',
                                width: 140,
                                height: 240,
                              ),
                            ],
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.fromLTRB(8, 19, 8, 8),
                              child: Container(
                                width: 220,
                                child: Container(
                                  width: 180,
                                  child: (Text(
                                    "Mèo què cần được vớt...",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(8, 23, 0, 8),
                              child: Row(
                                children: [
                                  Text(
                                    "Được đăng bởi ",
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "Dũng Xạo",
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromRGBO(253, 158, 121, 1),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
                              child: Container(
                                width: 220,
                                child: (Text(
                                  "25 phút trước",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(8, 18, 3, 4),
                              child: Container(
                                width: 220,
                                child: (Text(
                                  "Địa chỉ: 658 Lê Văn Luyện, Q9, tp.HCM",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )),
                              ),
                            ),
                          ],
                        ),
                      ]),
                      height: 200,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            new BoxShadow(
                                color: Colors.black54,
                                offset: new Offset(1.0, 2.0),
                                blurRadius: 3.5),
                          ]),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
