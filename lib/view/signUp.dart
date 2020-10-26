import 'package:flutter/material.dart';
import 'package:pet_help/customwidget/customtextfield.dart';
import 'package:pet_help/view/HomePage.dart';
import 'package:pet_help/view/Login.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('src/image/1.png'), fit: BoxFit.cover),
          gradient: LinearGradient(
              colors: [Colors.blue[400], Colors.blue],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter),
        ),
        child: Center(
          child: Column(
            children: <Widget>[
              SizedBox(height: 180,),
              Row(
                children: <Widget>[
                  SizedBox(
                    width: 40,
                  ),
                  Text(
                    'Đăng kí tài khoản',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 35),
                  ),
                ],
              ),
              SizedBox(
                height: 110,
              ),
              CustomTextField(
                hint: '    Nhập tên của bạn',
                issecured: false,
              ),
              SizedBox(
                height: 15,
              ),
              CustomTextField(
                hint: '     Nhập Email của bạn',
                issecured: false,
              ),
              SizedBox(
                height: 15,
              ),
              CustomTextField(
                hint: '    Nhập số điện thoại của bạn',
                issecured: false,
              ),
              SizedBox(
                height: 15,
              ),
              CustomTextField(
                hint: '    Nhập mật khẩu của bạn',
                issecured: true,
              ),
              SizedBox(
                height: 25,
              ),  Padding(
                padding: const EdgeInsets.only(left: 25, right: 25),
                child: ButtonTheme(
                    buttonColor: Colors.white,
                    minWidth: MediaQuery.of(context).size.width,
                    height: 55,
                    child: RaisedButton(
                      onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (ctx) => Login()));},
                      child: Text(
                        'Create',
                        style: TextStyle(color: Colors.grey, fontSize: 22),
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25)),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
