import 'package:flutter/material.dart';

class SignUpButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width*0.8,
        decoration: BoxDecoration(
          color: Color(0xff4354A0),
          borderRadius: BorderRadius.circular(20),
        ),
        child: FlatButton(
          onPressed: () {},
          child: Text(
            'انشاء حساب',
            style: TextStyle(
                color: Colors.white, fontSize: 28, fontFamily: 'Tajawal'),
          ),
        ),
      ),
    );
  }
}
