import 'package:flutter/material.dart';
import 'package:tawla_training/navigator/named_navigator.dart';
import 'package:tawla_training/navigator/named_navigator_impl.dart';

class LoginForgetPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 40.0),
          child: GestureDetector(
            onTap: () {
              NamedNavigatorImpl()
                  .push(Routes.FORGET_PASSWORD_ROUTE, replace: false,clean: false);
            },
            child: Text(
              'هل نسيت كلمة المرور ؟',
              style: TextStyle(fontSize: 17, fontFamily: 'Tajawal'),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
