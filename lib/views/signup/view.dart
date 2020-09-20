import 'package:flutter/material.dart';
import 'package:tawla_training/views/signup/register_button.dart';
import 'package:tawla_training/views/signup/fields.dart';
import 'package:tawla_training/views/signup/haveaccount.dart';
import 'package:tawla_training/views/signup/logo.dart';
import 'package:tawla_training/views/signup/terms.dart';

class SignUpView extends StatefulWidget {
  @override
  _SignUpViewState createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              SignUpLogo(),
              SignUpTextFields(),
              Terms(),
              SignUpButton(),
              LoginNow(),
            ],
          ),
        ],
      ),
    );
  }
}
