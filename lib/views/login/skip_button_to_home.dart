import 'package:flutter/material.dart';
class SkipLoginButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var heights = MediaQuery.of(context).size.height;
  var  widths = MediaQuery.of(context).size.width;
    return  Padding(
      padding: EdgeInsets.only(left: widths*0.85 ,top: heights*0.07),
      child: GestureDetector(
        onTap: (){},
        child: Container(
          height: MediaQuery.of(context).size.height * 0.07,
          width: MediaQuery.of(context).size.width * 0.15,
          child: Text(
            'تخطي',
            style: TextStyle(fontSize: 15, fontFamily: 'Cairo'),
          ),
        ),
      ),
    );
  }
}
