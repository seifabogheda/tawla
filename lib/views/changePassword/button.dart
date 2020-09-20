import 'package:flutter/material.dart';

class NewPassButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.only(top: 10),
        width: 320,
        decoration: BoxDecoration(
          color: Color(0xff4354A0),
          borderRadius: BorderRadius.circular(20),
        ),
        child: FlatButton(
          onPressed: () {},
          child: Text(
            'إرسال',
            style: TextStyle(
                color: Colors.white, fontSize: 25, fontFamily: 'Tajawal'),
          ),
        ),
      ),
    );
  }
}
