import 'package:flutter/material.dart';
import 'package:tawla_training/views/login/login_textform.dart';

class LoginTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(right: MediaQuery.of(context).size.height*0.06),
                child: Text('رقم الجوال',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 15,fontFamily: 'Cairo'))),
            CustomTextField(hint: "ادخل الجوال",),
            Padding(
                padding: EdgeInsets.only(right: MediaQuery.of(context).size.height*0.06),
                child: Text('كلمة المرور',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 15,fontFamily: 'Cairo'))),
            CustomTextField(hint: 'كلمة المرور')
          ],
        ),
      ),
    );
  }
}
