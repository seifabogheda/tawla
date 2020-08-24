import 'package:flutter/material.dart';

class LoginButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left :30.0),
          child: GestureDetector(
            onTap: (){},
            child: Text('هل نسيت كلمة المرور ؟',style: TextStyle(fontSize: 15,fontFamily: 'Cairo'),),
          ),
        ),
        SizedBox(height: 20,),
        Center(child: Container(
          width: 320,
            decoration: BoxDecoration(
              color: Color(0xff4354A0),
              borderRadius: BorderRadius.circular(20),
            ),
            child: FlatButton(onPressed: (){},child: Text('تسجيل دخول',style: TextStyle(color: Colors.white,fontSize: 28,fontFamily: 'Cairo'),),))),
        SizedBox(height: MediaQuery.of(context).size.height*0.07),
        Center(
          child: GestureDetector(
            onTap: (){},
            child: Text("لا تملك حساب ؟ سجل الآن",style: TextStyle(fontSize: 20,fontFamily: 'Cairo'),),
          ),
        ),
      ],
    );
  }
}
