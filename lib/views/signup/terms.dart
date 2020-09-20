import 'package:flutter/material.dart';

class Terms extends StatefulWidget {
  @override
  _TermsState createState() => _TermsState();
}

class _TermsState extends State<Terms> {
  var termsCheck = false;
  void termsCheckChange(bool val){
    setState(() {
      termsCheck = val;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 30.0),
          child: GestureDetector(
            onTap: () {},
            child: Text(
              'الموافقة علي الشروط و الأحكام',
              style: TextStyle(fontSize: 15, fontFamily: 'Tajawal'),
            ),
          ),
        ),
        Checkbox(value: termsCheck, onChanged: termsCheckChange,activeColor: Color(0xFFE082B4),),
      ],
    );
  }
}
