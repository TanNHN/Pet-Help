import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:pet_help/components/location.dart';
import 'package:pet_help/view/HomePage.dart';

import 'loadimg.dart';

class Pick extends StatefulWidget {
  @override
  _PickState createState() => _PickState();
}

class _PickState extends State<Pick> {
  File _image;
  _imgFromCamera() async {
    File image = await ImagePicker.pickImage(
        source: ImageSource.camera, imageQuality: 50);

    setState(() {
      _image = image;
    });
  }

  _imgFromGallery() async {
    File image = await ImagePicker.pickImage(
        source: ImageSource.gallery, imageQuality: 50);

    setState(() {
      _image = image;
    });
  }

  void _showPicker(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return SafeArea(
            child: Container(
              child: new Wrap(
                children: <Widget>[
                  new ListTile(
                      leading: new Icon(Icons.photo_library),
                      title: new Text('Bộ sưu tập'),
                      onTap: () {
                        _imgFromGallery();
                        Navigator.of(context).pop();
                      }),
                  new ListTile(
                    leading: new Icon(Icons.photo_camera),
                    title: new Text('Camera'),
                    onTap: () {
                      _imgFromCamera();
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false, // tránh overcross
      resizeToAvoidBottomInset: true, // bàn phím che textfield
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) => MyHomePage(),
              ));
            }),
        title: Container(
          child: Text(
            'Tìm cứu trợ'.toUpperCase(),
            style: GoogleFonts.lato(
                fontStyle: FontStyle.normal, color: Colors.white, fontSize: 25),
          ),
        ),
        backgroundColor: Color.fromRGBO(253, 158, 121, 1),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("src/image/background.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              // Padding(
              //   padding: const EdgeInsets.all(8.0),
              //   child: Text(
              //     'Upload image',
              //     style: TextStyle(
              //         fontSize: 25,
              //         color: Colors.green,
              //         fontWeight: FontWeight.bold),
              //   ),
              // ),
              Center(
                child: Column(
                  children: [
                    Container(
                      // decoration: BoxDecoration(),
                      // child: Container(
                      //   alignment: Alignment.center,
                      //   height: 260,
                      //   width: 300,

                      child: ImgLoad(),
                      // child: GestureDetector(
                      //   onTap: () {
                      //     _showPicker(context);
                      //   },
                      //   child: _image != null
                      //       ? ClipRRect(
                      //           borderRadius: BorderRadius.circular(50),
                      //           child: Image.file(
                      //             _image,
                      //             width: 300,
                      //             height: 300,
                      //             fit: BoxFit.cover,
                      //           ),
                      //         )
                      //       : Container(
                      //           decoration: BoxDecoration(
                      //               color: Colors.grey[200],
                      //               borderRadius: BorderRadius.circular(50)),
                      //           width: 100,
                      //           height: 100,
                      //           child: Icon(Icons.camera_alt),
                      //         ),
                      // ),
                    ),
                    // ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: DashboardScreen(),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        width: 340,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(18),
                            boxShadow: [
                              new BoxShadow(
                                  color: Colors.black54,
                                  offset: new Offset(1.0, 2.0),
                                  blurRadius: 3.5),
                            ]),
                        child: TextFormField(
                          maxLines: 1,
                          decoration: new InputDecoration(
                              labelStyle: TextStyle(
                                  color: Colors.green,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              contentPadding: EdgeInsets.all(10),
                              suffixIcon: Icon(Icons.mode_edit),
                              hintText: "thêm vị trí chi tiết",
                              focusColor: Colors.green,
                              hintStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.grey,
                                  fontStyle: FontStyle.italic)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        width: 360,
                        height: 130,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(18),
                            boxShadow: [
                              new BoxShadow(
                                  color: Colors.black54,
                                  offset: new Offset(1.0, 2.0),
                                  blurRadius: 3.5),
                            ]),
                        child: TextFormField(
                          maxLines: 4,
                          decoration: new InputDecoration(
                              labelText: 'Tình trạng hiện tại',
                              labelStyle: TextStyle(
                                  color: Colors.green,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold),
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              contentPadding: EdgeInsets.all(30),
                              suffixIcon: Icon(Icons.mode_edit),
                              focusColor: Colors.green,
                              hintText: "Nhập tình trạng của pet",
                              hintStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.grey,
                                  fontStyle: FontStyle.italic)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: 200,
                        height: 40,
                        child: RaisedButton(
                          color: Color.fromRGBO(253, 158, 121, 1),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                          ),
                          onPressed: () {
                            Navigator.of(context)
                                .pushReplacement(MaterialPageRoute(
                              builder: (context) => MyHomePage(),
                            ));
                          },
                          child: Text(
                            'Tìm cứu trợ'.toUpperCase(),
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
