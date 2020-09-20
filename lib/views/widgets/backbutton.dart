import 'package:flutter/material.dart';
class Back extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var heights = MediaQuery.of(context).size.height;
  var  widths = MediaQuery.of(context).size.width;
    return  Padding(
      padding: EdgeInsets.only(left: widths*0.85 ,top: heights*0.06),
      child: IconButton(icon: Icon(Icons.arrow_forward_ios,color: Color(0xFF4354A0),), onPressed: (){
        Navigator.pop(context);
      }),
    );
  }
}