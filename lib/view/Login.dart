import 'package:flutter/material.dart';
import 'package:pet_help/view/HomePage.dart';
import 'package:pet_help/view/HomePageRescue.dart';

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
                padding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
                child: TextField(
                  controller: userController,
                  style: TextStyle(fontSize: 18, color: Colors.black),
                  decoration: InputDecoration(
                      labelText: 'Tên tài khoản',
                      errorText: userInvalid ? null : "Tên tài khoảng trống"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: TextField(
                  controller: passController,
                  style: TextStyle(fontSize: 18, color: Colors.black),
                  obscureText: true,
                  decoration: InputDecoration(
                      labelText: 'Mật khẩu',
                      errorText: passInvalid ? null : "Mật khẩu trống"),
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
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 8, 8, 8),
                    child: Text(
                      "Quên mật khẩu",
                      style: TextStyle(fontSize: 16, color: Colors.blue),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(130, 8, 8, 8),
                    child: Text(
                      "Đăng kí",
                      style: TextStyle(
                          fontSize: 19,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.right,
                    ),
                  )
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
      // if (userController.text.isEmpty && passController.text.isEmpty) {
      //   userInvalid = true;
      //   passInvalid = true;
      // } else {
      //   userInvalid = false;
      //   passInvalid = false;
      // }
      if (userController.text == "admin" && passController.text == "123") {
        Navigator.of(context).push(
            new MaterialPageRoute(builder: (context) => MyHomePageRescue()));
      } else if (userController.text == "user" &&
          passController.text == "123") {
        Navigator.of(context)
            .push(new MaterialPageRoute(builder: (context) => MyHomePage()));
      } else
        return 'Sai tài khoản hay mật khẩu';
    });
  }
}
