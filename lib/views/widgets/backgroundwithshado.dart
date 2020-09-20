import 'package:flutter/material.dart';

class BackgroundWithShadow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/backgroundlogin.png'),
            fit: BoxFit.fill),
      ),
    );
  }
}
