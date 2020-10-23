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

class MyPost extends StatelessWidget {
  final String title;

  MyPost({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
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
              icon: const Icon(Icons.arrow_back_ios),
              onPressed: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => RescueHome(),
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
                              'src/image/cat3.jpg',
                              width: size.width *0.45,
                              height: size.height* 0.44,
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
                              width: size.width * 0.35,
                              child: Container(

                                child: (Text(
                                  "Bủn",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(1, 23, 0, 8),
                            child: Row(
                              children: [
                                Container(
                                  width: size.width * 0.2,
                                  child:
                                  Column(
                                    children: [
                                      Text("Đăng bởi: "),

                                    ],

                                  ),

                                ),
                                Container(
                                  width: size.width * 0.25,
                                  child:
                                  Column(
                                    children: [

                                      Text(
                                        "Bệnh viện Thú Y Pet Pro",
                                        style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.bold,
                                          color: Color.fromRGBO(253, 158, 121, 1),
                                        ),
                                      ),

                                    ],

                                  ),

                                ),

                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
                            child: Container(
                              width: size.width * 0.4,
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
                            padding: const EdgeInsets.fromLTRB(1, 23, 0, 8),
                            child: Row(
                              children: [
                                Container(
                                  width: size.width * 0.1,
                                  child:
                                  Column(
                                    children: [
                                      Icon(Icons.location_on),

                                    ],

                                  ),

                                ),
                                Container(
                                  width: size.width * 0.33,
                                  child:
                                  Column(
                                    children: [

                                      Text(
                                        "111 Trường Chinh, Phường 12, Tân Bình,, tp.HCM",
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,

                                        ),
                                      ),

                                    ],

                                  ),

                                ),

                              ],
                            ),
                          ),
                        ],
                      ),
                    ]),
                    height: size.height * 0.45,
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
            ))
            // ,BottomNaviBar()
          ],
        ),
      ),
    );
  }
}
