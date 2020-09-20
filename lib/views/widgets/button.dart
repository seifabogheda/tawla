import 'package:flutter/material.dart';
import 'package:tawla_training/navigator/named_navigator.dart';
import 'package:tawla_training/navigator/named_navigator_impl.dart';

class LoginButton extends StatelessWidget {
  final Function onTap;
  final String title;

  const LoginButton({Key key, this.onTap, this.title}) : super(key: key);
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
          onPressed: () {
            NamedNavigatorImpl().push(Routes.HOME_ROUTE,clean: false,replace: false);
          },
          child: Text(
            title,
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontFamily: 'Tajawal',fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
