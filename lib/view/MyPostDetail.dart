import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:pet_help/components/app_bar.dart';
import 'package:pet_help/components/chat.dart';
import 'package:pet_help/components/item_image.dart';
import 'package:pet_help/view/AdoptRequest.dart';
import 'package:pet_help/view/Contact.dart';
import 'package:pet_help/view/GMap.dart';
import 'package:pet_help/view/GMap2.dart';
import 'package:pet_help/view/HomePage.dart';
import 'package:pet_help/view/RescueHome.dart';
import 'package:pet_help/view/RescuePetManagement.dart';
import 'package:pet_help/view/PetHealthReportList.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter/material.dart';
import 'package:location/location.dart';
import 'package:pet_help/view/UserPostManagement.dart';

class MyPostDetail extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    MyPostDetailState itemInfo = new MyPostDetailState();
    return itemInfo;
  }
}

class MyPostDetailState extends State<MyPostDetail> {
  String imgUrl = "src/image/rescue_cat3.jpg";

  @override
  void initState() {
    super.initState();
    imgUrl = 'src/image/rescue_cat3.jpg';
    _getLocationPermission();
  }

  void _getLocationPermission() async {
    var location = new Location();
    try {
      location.requestPermission();
    } on Exception catch (_) {
      print('There was a problem allowing location access');
    }
  }

  @override
  Widget build(BuildContext context) {
    GoogleMapController mapController;
    final _formKey = GlobalKey<FormState>();
    final LatLng _center = const LatLng(45.521563, -122.677433);
    void _onMapCreated(GoogleMapController controller) {
      mapController = controller;
    }

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios, color: Colors.white),
            onPressed: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) => UserPostManagement(),
              ));
            }),
        title: Container(
          child: Text(
            'MÈO QUÈ',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
        backgroundColor: Color.fromRGBO(253, 158, 121, 1),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
            child: Column(
              children: [
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Itemimage(
                          imgSrc: imgUrl,
                        ),
                        SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(8, 10, 8, 10),
                              child: Container(
                                height: 100,
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: <Widget>[
                                      GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            imgUrl =
                                                "src/image/rescue_cat3.jpg";
                                          });
                                        },
                                        child: Image.asset(
                                          'src/image/rescue_cat3.jpg',
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            8, 0, 8, 0),
                                        child: GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              imgUrl = "src/image/cat2.jpg";
                                            });
                                          },
                                          child: Image.asset(
                                            'src/image/cat2.jpg',
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 0, 8, 0),
                                        child: GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              imgUrl = "src/image/cat3.jpg";
                                            });
                                          },
                                          child: Image.asset(
                                            'src/image/cat3.jpg',
                                          ),
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            imgUrl = "src/image/cat4.jpg";
                                          });
                                        },
                                        child: Image.asset(
                                          'src/image/cat4.jpg',
                                        ),
                                      ),
                                    ]),
                              ),
                            ))
                        // Row(
                        //   mainAxisAlignment: MainAxisAlignment.center,
                        //   children: <Widget>[

                        //   ],
                        // ),
                      ],
                    ),
                  ),
                ),
                Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8, 0, 0, 8),
                      child: Row(
                        children: [
                          Icon(Icons.person),
                          Text(
                            "Người đăng: ",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Tom",
                            style: TextStyle(
                              fontSize: 20,
                              color: Color.fromRGBO(253, 158, 121, 1),
                            ),
                          )
                        ],
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.fromLTRB(8, 0, 0, 8),
                      child: Row(
                        children: [
                          Icon(Icons.timer),
                          Text(
                            "Thời gian: ",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Container(
                            width: 230,
                            child: Text(
                              "Thứ 6, 16/10/2020 14:02:45",
                              style: TextStyle(
                                fontSize: 17,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8, 0, 3, 4),
                      child: Row(
                        children: [
                          Icon(Icons.location_on),
                          Text(
                            "Vị trí: ",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Container(
                            // width: 220,
                            child: Text(
                              "658 Lã Xuân Oai, Q.9, TP.HCM",
                              style: TextStyle(
                                fontSize: 17,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8, 10, 3, 4),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Row(
                            children: [
                              Text(
                                "Đặc điểm nhận dạng:  ",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(8, 8, 0, 8),
                            child: Row(
                              children: [
                                Text(
                                  "Loại: ",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Container(
                                  width: 230,
                                  child: Text(
                                    "Mèo",
                                    style: TextStyle(
                                      fontSize: 17,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(8, 0, 0, 8),
                            child: Row(
                              children: [
                                Text(
                                  "Màu sắc: ",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Container(
                                  width: 230,
                                  child: Text(
                                    "Cam",
                                    style: TextStyle(
                                      fontSize: 17,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8, 10, 3, 4),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Row(
                            children: [
                              Text(
                                "Tình trạng hiện tại: ",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(8, 8, 0, 8),
                            child: Row(
                              children: [
                                Text(
                                  "Tổng quát: ",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Container(
                                  width: 230,
                                  child: Text(
                                    "Cảnh giác cao",
                                    style: TextStyle(
                                      fontSize: 17,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(8, 0, 0, 8),
                            child: Row(
                              children: [
                                Text(
                                  "Bị thương: ",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Container(
                                  width: 230,
                                  child: Text(
                                    "Có",
                                    style: TextStyle(
                                      fontSize: 17,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(8, 0, 0, 8),
                            child: Row(
                              children: [
                                Text(
                                  "Vị trí vết thương: ",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Container(
                                  width: 230,
                                  child: Text(
                                    "Miệng",
                                    style: TextStyle(
                                      fontSize: 17,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(8, 0, 0, 8),
                            child: Row(
                              children: [
                                Text(
                                  "Phần trăm vết thương: ",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Container(
                                  width: 200,
                                  child: Text(
                                    "20%",
                                    style: TextStyle(
                                      fontSize: 17,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                    // new GestureDetector(
                    //   onTap: () {
                    //     showDialog(
                    //         context: context,
                    //         builder: (BuildContext context) {
                    //           return AlertDialog(
                    //             content: Stack(
                    //               overflow: Overflow.visible,
                    //               children: <Widget>[
                    //                 Positioned(
                    //                   right: -40.0,
                    //                   top: -40.0,
                    //                   child: InkResponse(
                    //                     onTap: () {
                    //                       Navigator.of(context).pop();
                    //                     },
                    //                     child: CircleAvatar(
                    //                       child: Icon(Icons.close),
                    //                       backgroundColor: Colors.red,
                    //                     ),
                    //                   ),
                    //                 ),
                    //                 Container(
                    //                   child: GMap2(),
                    //                 ),
                    //               ],
                    //             ),
                    //           );
                    //         });
                    //   },
                    //   child: Container(
                    //     width: 170,
                    //     child: Row(children: <Widget>[
                    //       Padding(
                    //         padding: const EdgeInsets.all(8.0),
                    //         child: Row(
                    //           children: <Widget>[
                    //             Icon(Icons.location_on_rounded),
                    //             Text(
                    //               "Tìm đường ngay",
                    //               style: TextStyle(fontSize: 17),
                    //             )
                    //           ],
                    //         ),
                    //       ),
                    //     ]),
                    //     height: 50,
                    //     decoration: BoxDecoration(
                    //         color: Colors.yellow,
                    //         borderRadius: BorderRadius.circular(15),
                    //         boxShadow: [
                    //           new BoxShadow(
                    //               color: Colors.black54,
                    //               offset: new Offset(1.0, 2.0),
                    //               blurRadius: 3.5),
                    //         ]),
                    //   ),
                    // ),
                    SizedBox(
                      height: 38,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                          height: 43,
                          width: 150,
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.lightBlueAccent,
                          ),
                          child: Column(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.of(context)
                                      .push(new MaterialPageRoute(
                                          builder: (context) => ChatScreen(
                                                name: 'Dũng Xạo',
                                                UrlImage: 'image/cat4.jpg',
                                              )));
                                },
                                child: Align(
                                  child: Text("Liên lạc",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold)),
                                ),
                              )
                            ],
                          ),
                        ),
                        // GestureDetector(
                        //     onTap: () {
                        //       Navigator.of(context).push(new MaterialPageRoute(
                        //           builder: (context) => GMap()));
                        //     },
                        //     child: Container(
                        //       height: 43,
                        //       width: 200,
                        //       alignment: Alignment.center,
                        //       padding: EdgeInsets.all(12),
                        //       decoration: BoxDecoration(
                        //         borderRadius: BorderRadius.circular(8),
                        //         color: Colors.orange,
                        //       ),
                        //       child: Column(
                        //         children: [
                        //           Align(
                        //             child: Text("Chấp nhận cứu trợ",
                        //                 style: TextStyle(
                        //                     color: Colors.white,
                        //                     fontSize: 16,
                        //                     fontWeight: FontWeight.bold)),
                        //           )
                        //         ],
                        //       ),
                        //     ))
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}