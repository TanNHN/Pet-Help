import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pet_help/components/BottomNaviBar.dart';
import 'package:pet_help/components/listView.dart';
import 'package:pet_help/components/list_header.dart';
import 'package:pet_help/view/loadimg.dart';
import 'package:pet_help/view/login_page.dart';
import 'package:pet_help/view/proflie.dart';

import 'AddPet.dart';

class MyPost extends StatelessWidget {
  final String title;

  MyPost ({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text(
          'Post',
          style: GoogleFonts.lato(
              fontStyle: FontStyle.normal, color: Colors.white, fontSize: 30),
        ),
        centerTitle: true,
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
                Navigator.of(context).push(
                    new MaterialPageRoute(builder: (context) => ProfileApp()));
                // Update the state of the app
                // ...
                // Then close the drawer
              },
            ),
            ListTile(
              title: Text('My pets'),
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
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("src/image/background.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            HeaderList(),
            Expanded(child: ListViewPet()),
            BottomNaviBar()
          ],
        ),
      ),
    );
  }
}
