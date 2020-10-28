import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'AddPetAfterRes.dart';

class MapPic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Map')),
      body:

    Container(
    decoration: BoxDecoration(
    image: DecorationImage(
    image: AssetImage('src/image/MapGG.jpg'), fit: BoxFit.cover),
    // gradient: LinearGradient(
    //     colors: [Colors.blue[400], Colors.blue],
    //     begin: Alignment.bottomCenter,
    //     end: Alignment.topCenter),
    ),
    ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        tooltip: 'Increment',
        child: Icon(Icons.done),
        onPressed: () {
          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => AddPetAfterRes()));
        },
      ),
    );
  }
}
