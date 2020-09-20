import 'package:flutter/material.dart';
import 'package:tawla_training/navigator/named_navigator.dart';
import 'package:tawla_training/navigator/named_navigator_impl.dart';

class Button extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.025,left: 25,right: 25),
      width: MediaQuery.of(context).size.width*.8,
      decoration: BoxDecoration(
        color: Color(0xff4354A0),
        borderRadius: BorderRadius.circular(20),
      ),
      child: FlatButton(
        onPressed: () {
      NamedNavigatorImpl().push(Routes.PIN_CODE_ROUTE,clean: false,replace: false);
  },
        child: Text(
          'إرسال',
          style: TextStyle(
              color: Colors.white, fontSize: 18, fontFamily: 'Tajawal',fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
