import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 320,
        decoration: BoxDecoration(
          color: Color(0xff4354A0),
          borderRadius: BorderRadius.circular(20),
        ),
        child: FlatButton(
          onPressed: () {},
          child: Text(
            'تسجيل دخول',
            style: TextStyle(
                color: Colors.white, fontSize: 28, fontFamily: 'Tajawal'),
          ),
        ),
      ),
    );
  }
}
