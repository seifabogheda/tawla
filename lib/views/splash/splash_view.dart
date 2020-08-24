import 'dart:async';

import 'package:flutter/material.dart';
import 'package:tawla_training/views/login/login_view.dart';

class SplashView extends StatefulWidget {
  @override
  _SplashViewState createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Timer(
        Duration(seconds: 2),
            () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => LoginScreen())));
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
              child: Image(image: AssetImage('assets/images/background.png'),fit: BoxFit.fill,)),
          Center(
            child: Image(image: AssetImage('assets/images/logo.png')),
          ),
        ],
      ),
    );
  }
}
