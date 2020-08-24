import 'package:flutter/material.dart';
import 'package:tawla_training/views/login/login_buttons.dart';
import 'package:tawla_training/views/login/login_textfield.dart';
import 'package:tawla_training/views/login/logo_login.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/images/backgroundlogin.png'),fit: BoxFit.fill),
              ),
            ),
            ListView(
              children: <Widget>[
                LogoLogin(),
                SizedBox(height: MediaQuery.of(context).size.height*0.01,),
                LoginTextField(),
                LoginButtons(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
