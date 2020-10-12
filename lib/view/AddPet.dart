import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pet_help/view/login_page.dart';

import 'package:pet_help/view/uploadImages.dart';

// ignore: camel_case_types
class AddPet extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    AddPetStage rescuePageStage = new AddPetStage();
    return rescuePageStage;
  }
}

//https://medium.com/flutterpub/create-beautiful-forms-with-flutter-47075cfe712
class AddPetStage extends State<AddPet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.fromLTRB(80, 0, 0, 0),
          child: Text("Add pet"),
        ),
        backgroundColor: Color.fromRGBO(253, 158, 121, 1),
      ),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            Container(
              color: Color.fromRGBO(253, 158, 121, 1),
              height: 200,
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 75,
                      height: 75,
                      padding: EdgeInsets.all(15),
                      child: Image.asset('src/icon/cat.png'),
                      decoration: BoxDecoration(
                          color: Colors.white, shape: BoxShape.circle),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                    child: Text(
                      'Tom\nUser@gmail.com',
                      style: GoogleFonts.lato(
                          fontStyle: FontStyle.normal,
                          color: Colors.black,
                          fontSize: 20),
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              title: Text('Profile'),
              leading: new Tab(
                icon: new Image.asset("src/icon/profile.png"),
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('My pet'),
              leading: new Tab(
                icon: new Image.asset("src/icon/pet-house.png"),
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('My Post'),
              leading: new Tab(
                icon: new Image.asset("src/icon/post.png"),
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Contact'),
              leading: new Tab(
                icon: new Image.asset("src/icon/contact.png"),
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Log out'),
              leading: new Tab(
                icon: new Image.asset("src/icon/logout.png"),
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => LoginScreen(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      body: UploadImages(),
    );
  }
}
