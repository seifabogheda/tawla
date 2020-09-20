import 'package:flutter/material.dart';

class Texts extends StatelessWidget {
  final String text;
  final String text2;
  const Texts({Key key, this.text, this.text2}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.08  ),
              child: Text(text,style: TextStyle(fontFamily: 'Tajawal',fontSize: 15,fontWeight: FontWeight.bold,color: Color(0xFF606060)),)),
          Container(
            margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.02,left: 30),
              child: Text(text2,style: TextStyle(fontFamily: 'Tajawal',fontSize: 15,fontWeight: FontWeight.bold,color: Color(0xFF606060)),)),
        ],
      ),
    );
  }
}
