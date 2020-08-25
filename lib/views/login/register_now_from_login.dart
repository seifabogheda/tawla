import 'package:flutter/material.dart';

class RegisterNow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {},
        child: Text(
          "لا تملك حساب ؟ سجل الآن",
          style: TextStyle(fontSize: 20, fontFamily: 'Cairo'),
        ),
      ),
    );
  }
}
