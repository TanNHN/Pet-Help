import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pet_help/components/chat.dart';
import 'package:pet_help/view/ReasonForm.dart';
import 'package:pet_help/view/UserPostDetail.dart';


class Test extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios, color: Colors.white),
            onPressed: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) => UserPostDetail(),
              ));
            }),
        title: Container(
          child: Text(
            'Map',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
        backgroundColor: Color.fromRGBO(253, 158, 121, 1),
        centerTitle: true,
      ),
      body: Container(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget>[
                GestureDetector(
                    onTap: () {

                    },
                    child: Container(
                      height: 47,
                      width: 100,
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        // color: Colors.green,
                        border: Border.all(
                          color: Colors.black,
                          width: 1,
                        ),
                      ),
                      child: Column(
                        children: [
                          Align(
                            child: Text("Tất cả",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold)),
                          )
                        ],
                      ),
                    )),
                SizedBox(
                  width: 18,
                ),
                GestureDetector(
                    onTap: () {

                    },
                    child: Container(
                      height: 47,
                      width: 100,
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        // color: Colors.green,
                        border: Border.all(
                          color: Colors.black,
                          width: 1,
                        ),
                      ),
                      child: Column(
                        children: [
                          Align(
                            child: Text("Mèo",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold)),
                          )
                        ],
                      ),
                    )),
                SizedBox(
                  width: 18,
                ),
                GestureDetector(
                    onTap: () {

                    },
                    child: Container(
                      height: 47,
                      width: 100,
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        // color: Colors.green,
                        border: Border.all(
                          color: Colors.black,
                          width: 1,
                        ),
                      ),

                      child: Column(
                        children: [
                          Align(
                            child: Text("Chó",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold)),
                          )
                        ],
                      ),
                    )),
                SizedBox(
                  width: 18,
                ),
                GestureDetector(
                    onTap: () {

                    },
                    child: Container(
                      height: 47,
                      width: 100,
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        // color: Colors.green,
                        border: Border.all(
                          color: Colors.black,
                          width: 1,
                        ),
                      ),

                      child: Column(
                        children: [
                          Align(
                            child: Text("Hamster",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold)),
                          )
                        ],
                      ),
                    )),
                SizedBox(
                  width: 18,
                ),
                GestureDetector(
                    onTap: () {

                    },
                    child: Container(
                      height: 47,
                      width: 100,
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        // color: Colors.green,
                        border: Border.all(
                          color: Colors.black,
                          width: 1,
                        ),
                      ),

                      child: Column(
                        children: [
                          Align(
                            child: Text("Cú",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold)),
                          )
                        ],
                      ),
                    )),
              ],
            ),
          )
      ),
    );
  }
}
