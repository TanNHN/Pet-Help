import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pet_help/components/app_bar.dart';
import 'package:pet_help/components/chat.dart';
import 'package:pet_help/components/item_image.dart';
import 'package:pet_help/view/Contact.dart';
import 'package:pet_help/view/HomePage.dart';
import 'package:pet_help/view/ViewPetReportList.dart';

class PetProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Body();
  }
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Pet',
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
      body: Container(
          child: Column(children: <Widget>[
        Itemimage(imgSrc: "src/image/background.jpg"),
        Expanded(
          child: ItemInfo(),
        ),
      ])),
    );
  }
}

class ItemInfo extends StatelessWidget {
  const ItemInfo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Container(
                padding: EdgeInsets.all(20),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 50,
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(15),
                          height: 70,
                          width: 350,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                children: [
                                  Text("Gender",
                                      style:
                                          TextStyle(color: Colors.blueAccent)),
                                  Text("Boy",
                                      style: TextStyle(color: Colors.orange)),
                                ],
                              ),
                              Column(
                                children: [
                                  Text("Color",
                                      style:
                                          TextStyle(color: Colors.blueAccent)),
                                  Text("White",
                                      style: TextStyle(color: Colors.orange)),
                                ],
                              ),
                              Column(
                                children: [
                                  Text("Breed",
                                      style:
                                          TextStyle(color: Colors.blueAccent)),
                                  Text("Russian",
                                      style: TextStyle(color: Colors.orange)),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                          height: 30,
                          width: 110,
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(6),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border(
                                top: BorderSide(width: 1.0, color: Colors.blue),
                                left:
                                    BorderSide(width: 1.0, color: Colors.blue),
                                right:
                                    BorderSide(width: 1.0, color: Colors.blue),
                                bottom:
                                    BorderSide(width: 1.0, color: Colors.blue),
                              )),
                          child: Column(
                            children: [
                              Align(
                                child: Text("Vaccinated",
                                    style: TextStyle(color: Colors.blueAccent)),
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: 30,
                          width: 110,
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(6),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border(
                                top: BorderSide(width: 1.0, color: Colors.blue),
                                left:
                                    BorderSide(width: 1.0, color: Colors.blue),
                                right:
                                    BorderSide(width: 1.0, color: Colors.blue),
                                bottom:
                                    BorderSide(width: 1.0, color: Colors.blue),
                              )),
                          child: Column(
                            children: [
                              Align(
                                child: Text("Dewormed",
                                    style: TextStyle(color: Colors.blueAccent)),
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: 30,
                          width: 110,
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(6),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border(
                                top: BorderSide(width: 1.0, color: Colors.blue),
                                left:
                                    BorderSide(width: 1.0, color: Colors.blue),
                                right:
                                    BorderSide(width: 1.0, color: Colors.blue),
                                bottom:
                                    BorderSide(width: 1.0, color: Colors.blue),
                              )),
                          child: Column(
                            children: [
                              Align(
                                child: Text("Castrated",
                                    style: TextStyle(color: Colors.blueAccent)),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    Container(
                      height: 5,
                    ),
                    Divider(
                      color: Colors.black87,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 15,
                          width: 200,
                          alignment: Alignment(12, 0.1),
                          child: Text(
                            "Last reported: 20/5/1999",
                            style: TextStyle(color: Colors.grey, fontSize: 15),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Column(
                          children: [
                            Container(
                              width: 100,
                              alignment: Alignment(0.1, 0.8),
                              child: Text(
                                "Bum",
                                style: TextStyle(
                                    color: Colors.brown,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 40),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Row(
                      children: <Widget>[
                        Column(
                          children: [
                            Text(
                              "Adopter: ",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 20),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              "Luan Dang",
                              textAlign: TextAlign.left,
                              style: TextStyle(fontSize: 20),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.location_on,
                          color: Colors.grey,
                        ),
                        Container(
                          width: 300,
                          child: Text(
                            "36, Trinh Dinh Thao, p Hoa Thanh, q Tan Phu",
                            textAlign: TextAlign.left,
                            style: TextStyle(fontSize: 17),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 38,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                          height: 43,
                          width: 110,
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
                                  Navigator.of(context).push(
                                      new MaterialPageRoute(
                                          builder: (context) =>
                                              ViewPetReportList()));
                                },
                                child: Align(
                                  child: Text("View Report",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold)),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: 43,
                          width: 200,
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.orange,
                          ),
                          child: Column(
                            children: [
                              GestureDetector(
                                  onTap: () {
                                    Navigator.of(context)
                                        .push(new MaterialPageRoute(
                                            builder: (context) => ChatScreen(
                                                  name: "Luan Dang",
                                                  UrlImage:
                                                      "https://thuthuatnhanh.com/wp-content/uploads/2019/07/anh-girl-xinh-facebook-tuyet-dep-387x580.jpg",
                                                )));
                                  },
                                  child: Align(
                                    child: Text("Contact User",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold)),
                                  ))
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ))));
  }

  // ignore: non_constant_identifier_names
  Row ShopName({String name}) {
    return Row(
      children: <Widget>[
        Icon(
          Icons.location_on,
          color: Colors.grey,
        ),
        SizedBox(
          width: 10,
        ),
        Text(name)
      ],
    );
  }
}
