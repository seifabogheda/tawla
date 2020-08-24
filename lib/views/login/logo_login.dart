import 'package:flutter/material.dart';

class LogoLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 10,left: 310,top: 40),
            child: Container(
              height: MediaQuery.of(context).size.height*0.07,
              width: MediaQuery.of(context).size.width*0.15,
              child: Text('تخطي',style: TextStyle(fontSize: 15,fontFamily: 'Cairo'),),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left :45.0,top: 30,right: 30),
            child: Container(
              height: MediaQuery.of(context).size.height*0.13,
                width: MediaQuery.of(context).size.height*0.15,
                child: Image(image: AssetImage('assets/images/logo.png',))),
          )
        ],
      );
  }
}
