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
                          width: size.width * 0.45,
                          height: size.height * 0.44,
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
                              "Một con mèo bị thương ngay miệng",
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
                              width: size.width * 0.1,
                              child: Column(
                                children: [
                                  Icon(Icons.account_circle_outlined),
                                ],
                              ),
                            ),
                            Container(
                              // width: size.width * 0.3,
                              child: Column(
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
                              child: Column(
                                children: [
                                  Icon(Icons.location_on),
                                ],
                              ),
                            ),
                            Container(
                              width: size.width * 0.33,
                              child: Column(
                                children: [
                                  Text(
                                    "120 Võ Văn Ngân, Q9, TP.HCM",
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
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
                        child: Container(
                          width: size.width * 0.4,
                          child: (Text(
                            "Còn cách nhau 4.5 km",
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          )),
                        ),
                      ),
                    ],
                  ),
                ]),
                height: size.height * 0.35,
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
                          width: size.width * 0.45,
                          height: size.height * 0.44,
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
                              "Thấy chú chó bị thương ở lưỡi",
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
                              width: size.width * 0.1,
                              child: Column(
                                children: [
                                  Icon(Icons.account_circle_outlined),
                                ],
                              ),
                            ),
                            Container(
                              // width: size.width * 0.3,
                              child: Column(
                                children: [
                                  Text(
                                    "Hậu Đậu",
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
                        padding: const EdgeInsets.fromLTRB(1, 23, 0, 8),
                        child: Row(
                          children: [
                            Container(
                              width: size.width * 0.1,
                              child: Column(
                                children: [
                                  Icon(Icons.location_on),
                                ],
                              ),
                            ),
                            Container(
                              width: size.width * 0.33,
                              child: Column(
                                children: [
                                  Text(
                                    "658 Quang Trung, Q12, TP.HCM",
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
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
                        child: Container(
                          width: size.width * 0.4,
                          child: (Text(
                            "Còn cách nhau 5 km",
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          )),
                        ),
                      ),
                    ],
                  ),
                ]),
                height: size.height * 0.35,
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
                          width: size.width * 0.45,
                          height: size.height * 0.44,
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
                              "Một chú mèo bị thương ở chân ",
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
                              width: size.width * 0.1,
                              child: Column(
                                children: [
                                  Icon(Icons.account_circle_outlined),
                                ],
                              ),
                            ),
                            Container(
                              // width: size.width * 0.3,
                              child: Column(
                                children: [
                                  Text(
                                    "Luân Lù",
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
                        padding: const EdgeInsets.fromLTRB(1, 23, 0, 8),
                        child: Row(
                          children: [
                            Container(
                              width: size.width * 0.1,
                              child: Column(
                                children: [
                                  Icon(Icons.location_on),
                                ],
                              ),
                            ),
                            Container(
                              width: size.width * 0.33,
                              child: Column(
                                children: [
                                  Text(
                                    "250 CMT8, Q10, TP.HCM",
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
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
                        child: Container(
                          width: size.width * 0.4,
                          child: (Text(
                            "Còn cách nhau 9 km",
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          )),
                        ),
                      ),
                    ],
                  ),
                ]),
                  height: size.height * 0.35,
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
                          'src/image/rescue_cat2.jpg',
                          width: size.width * 0.45,
                          height: size.height * 0.44,
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
                              "Chú mèo bị bỏ rơi",
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
                              width: size.width * 0.1,
                              child: Column(
                                children: [
                                  Icon(Icons.account_circle_outlined),
                                ],
                              ),
                            ),
                            Container(
                              // width: size.width * 0.3,
                              child: Column(
                                children: [
                                  Text(
                                    "Nguyen",
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
                            "15 ngày trước",
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
                              child: Column(
                                children: [
                                  Icon(Icons.location_on),
                                ],
                              ),
                            ),
                            Container(
                              width: size.width * 0.33,
                              child: Column(
                                children: [
                                  Text(
                                    "658 Quang Trung, Q12, TP.HCM",
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
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
                        child: Container(
                          width: size.width * 0.4,
                          child: (Text(
                            "Còn cách nhau 20 km",
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          )),
                        ),
                      ),
                    ],
                  ),
                ]),
                height: size.height * 0.35  ,
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
          ],
        ),
      ),
    ));
  }
}
