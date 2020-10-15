import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pet_help/components/DropDownScreen.dart';

import 'package:pet_help/view/HomePage.dart';
import 'package:pet_help/view/PetProfile.dart';



class RescuePetList extends StatelessWidget {
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
                Row(
                  children: <Widget>[
                    DropDownScreen(),
                  ],
                ),
                // Row(
                //
                //   mainAxisAlignment: MainAxisAlignment.center,
                //
                //   children: <Widget>[
                //
                //     Container(
                //       height: 30,
                //       width: 120,
                //
                //       alignment: Alignment.center,
                //       padding: EdgeInsets.fromLTRB(14, 6, 8, 4),
                //       decoration: BoxDecoration(
                //           color: Colors.blueAccent,
                //           borderRadius: BorderRadius.only(topLeft: Radius.circular(8),bottomLeft:Radius.circular(8) ),
                //           border: Border(
                //             top: BorderSide(width: 1.0, color: Colors.blueAccent),
                //             left: BorderSide(width: 1.0, color: Colors.blueAccent),
                //             right: BorderSide(width: 1.0, color: Colors.blueAccent),
                //             bottom: BorderSide(width: 1.0, color: Colors.blueAccent),
                //           )
                //       ),
                //       child: Row(
                //         children: [
                //           Container(
                //
                //             child: (
                //                 Column(
                //                   children: [
                //                     Align(
                //                       child: (
                //                           Text("Được nhận nuôi", style: TextStyle(color: Colors.white),)
                //                       ),
                //                     ),
                //                   ],
                //                 )
                //             ),
                //           ),
                //
                //         ],
                //       ),
                //     ),
                //     Container(
                //       height: 30,
                //       width: 120,
                //
                //       alignment: Alignment.center,
                //       padding:EdgeInsets.fromLTRB(7, 6, 8, 4),
                //       decoration: BoxDecoration(
                //
                //           border: Border(
                //             top: BorderSide(width: 1.0, color: Colors.blueAccent),
                //             left: BorderSide(width: 1.0, color: Colors.blueAccent),
                //             right: BorderSide(width: 1.0, color: Colors.blueAccent),
                //             bottom: BorderSide(width: 1.0, color: Colors.blueAccent),
                //           )
                //       ),
                //       child: Row(
                //         children: [
                //           Container(
                //             child: (
                //                 Column(
                //                   children: [
                //                     Text("Đang tìm người",style: TextStyle(color: Colors.blueAccent),),
                //                   ],
                //                 )
                //             ),
                //           ),
                //
                //         ],
                //       ),
                //     ),
                //     Container(
                //       height: 30,
                //       width: 120,
                //
                //       alignment: Alignment.center,
                //       padding:EdgeInsets.fromLTRB(7, 6, 8, 4),
                //       decoration: BoxDecoration(
                //           borderRadius: BorderRadius.only(topRight: Radius.circular(8),bottomRight:Radius.circular(8) ),
                //           border: Border(
                //             top: BorderSide(width: 1.0, color: Colors.blueAccent),
                //             left: BorderSide(width: 1.0, color: Colors.blueAccent),
                //             right: BorderSide(width: 1.0, color: Colors.blueAccent),
                //             bottom: BorderSide(width: 1.0, color: Colors.blueAccent),
                //           )
                //       ),
                //       child: Row(
                //         children: [
                //           Container(
                //             child: (
                //                 Column(
                //                   children: [
                //                     Text("Chưa được nhận",style: TextStyle(color: Colors.blueAccent),),
                //                   ],
                //                 )
                //             ),
                //           ),
                //
                //         ],
                //       ),
                //     ),
                //   ],
                // ),

                SizedBox(height: 20,),
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

                                padding: const EdgeInsets.fromLTRB(8, 23, 8, 8),
                                child: Container(
                                  width: 220,
                                  child: Row(
                                      children: <Widget>[
                                        Column(
                                          children: [
                                            Text(
                                              "Bum",


                                              style: TextStyle(
                                                fontSize: 30,
                                                fontWeight: FontWeight.bold,

                                              ),
                                            )
                                          ],
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(55, 0, 8, 8),

                                          child: Container(
                                            width: 90,
                                            child:
                                            Text(
                                              "Đã được nhận",


                                              style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.redAccent,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                      ),

                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.fromLTRB(8, 15, 0, 8),
                                child: Row(
                                  children: [

                                    Text(
                                      "Cập nhật lần cuối: ",
                                      style: TextStyle(
                                        fontSize: 14,

                                        color: Colors.grey,
                                      ),
                                    ),
                                    Text(
                                      "15/02/2015",
                                      style: TextStyle(
                                        fontSize: 14,

                                        color: Colors.grey,
                                      ),
                                    )
                                  ],
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.fromLTRB(8, 18, 3, 4),

                                child: Row(

                                  children: <Widget>[

                                    Text(
                                      "Từ: ",
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,

                                      ),
                                    ),
                                    Container(
                                      alignment: Alignment.center,
                                      width: 170,
                                      child: Text(
                                        "Bệnh viện Pet PRO",
                                        maxLines: 2,
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: Color.fromRGBO(253, 158, 121, 1),

                                        ),
                                      ),
                                    ),
                                  ],
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
                                  'src/image/pet_5.jpg',
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

                                padding: const EdgeInsets.fromLTRB(8, 23, 8, 8),
                                child: Container(
                                  width: 220,
                                  child: Row(
                                    children: <Widget>[
                                      Column(
                                        children: [
                                          Text(
                                            "Cái",


                                            style: TextStyle(
                                              fontSize: 30,
                                              fontWeight: FontWeight.bold,

                                            ),
                                          )
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(55, 0, 8, 8),

                                        child: Container(
                                          width: 100,
                                          child:
                                          Text(
                                            "Chưa được nhận",


                                            style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.blueAccent,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),

                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.fromLTRB(8, 15, 0, 8),
                                child: Row(
                                  children: [

                                    Text(
                                      "Cập nhật lần cuối: ",
                                      style: TextStyle(
                                        fontSize: 14,

                                        color: Colors.grey,
                                      ),
                                    ),
                                    Text(
                                      "20/08/2019",
                                      style: TextStyle(
                                        fontSize: 14,

                                        color: Colors.grey,
                                      ),
                                    )
                                  ],
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.fromLTRB(8, 18, 3, 4),

                                child: Row(

                                  children: <Widget>[

                                    Text(
                                      "Từ: ",
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,

                                      ),
                                    ),
                                    Container(
                                      alignment: Alignment.center,
                                      width: 170,
                                      child: Text(
                                        "Bệnh viện New Pet Hospital",
                                        maxLines: 2,
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: Color.fromRGBO(253, 158, 121, 1),

                                        ),
                                      ),
                                    ),
                                  ],
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

                                padding: const EdgeInsets.fromLTRB(8, 23, 8, 8),
                                child: Container(
                                  width: 220,
                                  child: Row(
                                    children: <Widget>[
                                      Column(
                                        children: [
                                          Text(
                                            "Bê",


                                            style: TextStyle(
                                              fontSize: 30,
                                              fontWeight: FontWeight.bold,

                                            ),
                                          )
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(55, 0, 8, 8),

                                        child: Container(
                                          width: 90,
                                          child:
                                          Text(
                                            "Đã được nhận",


                                            style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.redAccent,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),

                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.fromLTRB(8, 15, 0, 8),
                                child: Row(
                                  children: [

                                    Text(
                                      "Cập nhật lần cuối: ",
                                      style: TextStyle(
                                        fontSize: 14,

                                        color: Colors.grey,
                                      ),
                                    ),
                                    Text(
                                      "15/02/2020",
                                      style: TextStyle(
                                        fontSize: 14,

                                        color: Colors.grey,
                                      ),
                                    )
                                  ],
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.fromLTRB(8, 18, 3, 4),

                                child: Row(

                                  children: <Widget>[

                                    Text(
                                      "Từ: ",
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,

                                      ),
                                    ),
                                    Container(
                                      alignment: Alignment.center,
                                      width: 170,
                                      child: Text(
                                        "Cứu trợ SAR",
                                        maxLines: 2,
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: Color.fromRGBO(253, 158, 121, 1),

                                        ),
                                      ),
                                    ),
                                  ],
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