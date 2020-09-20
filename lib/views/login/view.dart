import 'package:flutter/material.dart';
import 'package:tawla_training/views/login/textfield.dart';
import 'package:tawla_training/views/login/register_now_from_login.dart';
import 'package:tawla_training/views/login/skip_button_to_home.dart';
import 'package:tawla_training/views/widgets/logo.dart';

import 'forgetpassword.dart';

class LoginView extends StatefulWidget {
  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/backgroundlogin.png'),
                    fit: BoxFit.fill),
              ),
            ),
            ListView(
              children: <Widget>[
                SkipLoginButton(),
                Logo(),
                SizedBox(
                  height: 20,
                ),
                LoginTextField(),
                SizedBox(
                  height: 25,
                ),
                LoginForgetPassword(),
                SizedBox(
                  height: 25,
                ),
                RegisterNow(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
