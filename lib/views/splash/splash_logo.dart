import 'package:flutter/material.dart';

class SplashLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Image(image: AssetImage('assets/images/logo.png')
    ),
    );
  }
}
