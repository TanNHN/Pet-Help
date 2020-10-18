import 'package:flutter/material.dart';

import 'package:pet_help/view/HomePage.dart';
import 'package:pet_help/view/PetProfile.dart';
import 'package:pet_help/view/UserPostDetail.dart';

class RescueHomeList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            // Text(
            //   "Báo cáo sức khỏe của Bum",
            //   style: TextStyle(fontSize: 30),
            // ),
            SizedBox(height: 10),
            SizedBox(height: 10),
            new GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (context) => new UserPostDetail()),
                );
              },
              child: Container(
                width: double.infinity,

                child: Row(children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: <Widget>[
                        Image.asset(
                          'src/image/rescue_cat3.jpg',
                          width: size.width *0.35,
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
                          width: size.width * 0.53,
                          child: Container(

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
                        padding: const EdgeInsets.fromLTRB(1, 23, 0, 8),
                        child: Row(
                          children: [
                            Container(
                              width: size.width * 0.2,
                              child:
                              Column(
                                children: [
                                  Text(
                                    "Được đăng bởi ",
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),

                                ],

                              ),

                            ),
                            Container(
                              width: size.width * 0.2,
                              child:
                              Column(
                                children: [
                                  Text(
                                    "Dũng Xạo",
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
                          width: size.width * 0.5,
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
                          width: size.width * 0.4,
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
                height: size.height * 0.33,
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
            ),
            SizedBox(height: 10),
            SizedBox(height: 10),
            new GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (context) => new UserPostDetail()),
                );
              },
              child: Container(
                width: double.infinity,
                child: Row(children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: <Widget>[
                        Image.asset(
                          'src/image/pet_6.jpg',
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
                              "Thấy chú chó bị thương",
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
                              "Hậu Đậu",
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
                            "15 phút trước",
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
                            "Địa chỉ: 658 Lê Văn Kiệt, Q9, tp.HCM",
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
            ),
            SizedBox(height: 10),
            SizedBox(height: 10),
            new GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (context) => new UserPostDetail()),
                );
              },
              child: Container(
                width: double.infinity,
                child: Row(children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: <Widget>[
                        Image.asset(
                          'src/image/pet_4.jpg',
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
                              "Luân Lù",
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
                            "5 phút trước",
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
            ),
          ],
        ),
      ),
    ));
  }
}
