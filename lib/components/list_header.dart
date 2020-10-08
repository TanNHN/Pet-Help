import 'package:flutter/material.dart';
class HeaderList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(

      decoration: new BoxDecoration(shape: BoxShape.circle),
      child: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(2),
                    boxShadow: [
                      new BoxShadow(
                          color: Colors.black54,
                          offset: new Offset(1.0, 2.0),
                          blurRadius: 3.5),
                    ]),
                child: TextField(
                  decoration: InputDecoration(

                    hintText: '',
                    suffixIcon: Icon(Icons.search),
                  ),
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
