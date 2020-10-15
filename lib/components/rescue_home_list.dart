import 'package:flutter/material.dart';

import 'package:pet_help/view/HomePage.dart';
import 'package:pet_help/view/PetProfile.dart';



class RescueHomeList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
                new GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => new PetProfile()),
                    );
                  },
                  child: Container(

                    width: double.infinity,
                    child:
                    Row(
                        children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: <Widget>[
                            Image.asset(
                              'src/image/rescue_cat1.jpg',
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
                              child: (

                                Text(
                                  "Một bé mèo bị gãy chân ở khu vực lê văn viêt",


                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,

                                  ),
                                )),

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
                                  "Tan1",
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
                            padding: const EdgeInsets.fromLTRB(8, 18, 3, 4),

                            child: Container(
                              width: 220,
                              child: (

                              Text(
                                "Địa chỉ: 658 Lê Văn Luyện, Q9, tp.HCM",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              )

                              ),
                            ),
                          ),
                        ],
                      ),
                    ]
                    ),


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
                new GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => new PetProfile()),
                    );
                  },
                  child: Container(

                    width: double.infinity,
                    child:
                    Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: <Widget>[
                                Image.asset(
                                  'src/image/rescue_cat2.jpg',
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
                                  child: (

                                      Text(
                                        "Một bé mèo đội cuộn giấy trên đầu tại ĐH FPT",


                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,

                                        ),
                                      )),

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
                                      "Tan2",
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
                                padding: const EdgeInsets.fromLTRB(8, 18, 3, 4),

                                child: Container(
                                  width: 220,
                                  child: (

                                      Text(
                                        "Địa chỉ: 658 Lê Văn Luyện, Q9, tp.HCM",
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      )

                                  ),
                                ),
                              ),
                            ],
                          ),
                        ]
                    ),


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
                new GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => new PetProfile()),
                    );
                  },
                  child: Container(

                    width: double.infinity,
                    child:
                    Row(
                        children: <Widget>[
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
                                  child: (

                                      Text(
                                        "Một thằng đực vã quá cần được vớt...",


                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,

                                        ),
                                      )),

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
                                      "Tan3",
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
                                padding: const EdgeInsets.fromLTRB(8, 18, 3, 4),

                                child: Container(
                                  width: 220,
                                  child: (

                                      Text(
                                        "Địa chỉ: 658 Lê Văn Luyện, Q9, tp.HCM",
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      )

                                  ),
                                ),
                              ),
                            ],
                          ),
                        ]
                    ),


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