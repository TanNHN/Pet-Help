import 'package:flutter/material.dart';
import 'package:pet_help/view/HomePage.dart';
import 'package:pet_help/view/RescueHome.dart';
import 'package:pet_help/view/zHomePageRescue.dart';
import 'package:responsive_grid/responsive_grid.dart';

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    LoginState loginState = new LoginState();
    return loginState;
  }
}

class LoginState extends State<Login> {
  TextEditingController userController = new TextEditingController();
  TextEditingController passController = new TextEditingController();
  var userInvalid = false;
  var passInvalid = false;

  Widget _signInButton() {
    return OutlineButton(
      splashColor: Colors.grey,
      onPressed: () {},
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
      highlightElevation: 0,
      borderSide: BorderSide(color: Colors.grey),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image(image: AssetImage("src/icon/google_logo.png"), height: 35.0),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                'Sign in with Google',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomPadding: false,
        body: Container(
          constraints: BoxConstraints.expand(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 110, 0),
                child: Image.asset(
                  'src/icon/logoCute.png',
                  width: 250,
                  height: 250,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(26, 0, 26, 0),
                child: TextField(
                  controller: userController,
                  style: TextStyle(fontSize: 18, color: Colors.black),
                  decoration: InputDecoration(
                      labelText: 'Tên đăng nhập',
                      errorText: userInvalid ? "Tên tài khoảng trống" : null),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(26, 0, 26, 15),
                child: TextField(
                  controller: passController,
                  style: TextStyle(fontSize: 18, color: Colors.black),
                  obscureText: true,
                  decoration: InputDecoration(
                      labelText: 'Mật khẩu',
                      errorText: passInvalid ? "Mật khẩu trống" : null),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: SizedBox(
                  width: double.infinity,
                  height: 45,
                  child: RaisedButton(
                    color: Color.fromRGBO(253, 158, 121, 1),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                    onPressed: onSignInClick,
                    child: Text("Đăng nhập",
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                        )),
                  ),
                ),
              ),
              _signInButton(),
              // Padding(
              //   padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
              //   child: Row(
              //     mainAxisSize: MainAxisSize.min,
              //     mainAxisAlignment: MainAxisAlignment.center,
              //     children: <Widget>[
              //       Image(image: AssetImage("src/icon/google_logo.png"), height: 35.0),
              //       Padding(
              //         padding: const EdgeInsets.only(left: 10),
              //         child: Text(
              //           'Sign in with Google',
              //           style: TextStyle(
              //             fontSize: 20,
              //             color: Colors.grey,
              //           ),
              //         ),
              //       )
              //     ],
              //   ),
              // ),

              ResponsiveGridRow(
                children: [
                  ResponsiveGridCol(
                    child: Container(
                      alignment: Alignment.topCenter,
                      child:
                      Text(
                      "\nQuên mật khẩu",
                      style: TextStyle(fontSize: 19, color: Colors.blue, fontWeight: FontWeight.bold),
                    ),
                  ),
                  ),
                  ResponsiveGridCol(
                    //padding: const EdgeInsets.fromLTRB(130, 8, 8, 8),
                    child:
                      Container(
                        alignment: Alignment.topCenter,
                        child: Text(
                          "\nĐăng kí",
                          style: TextStyle(
                              fontSize: 19,
                              color: Colors.blue,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.left,
                        ),
                      ),

                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }


  void onSignInClick() {
    setState(() {
      if (userController.text.isEmpty && passController.text.isEmpty) {
        userInvalid = true;
        passInvalid = true;
      } else {
        userInvalid = false;
        passInvalid = false;
      }
      if (userController.text == "cuutro" && passController.text == "123") {
        Navigator.of(context)
            .push(new MaterialPageRoute(builder: (context) => RescueHome()));
      } else if (userController.text == "user" &&
          passController.text == "123") {
        Navigator.of(context)
            .push(new MaterialPageRoute(builder: (context) => MyHomePage()));
      }
    });
  }
}
