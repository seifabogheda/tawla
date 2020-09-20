import 'package:flutter/material.dart';
import 'package:tawla_training/views/login/login_view.dart';
class LoginNow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (_)=> LoginView()));
        },
        child: Text(
          " تملك حساب ؟ سجل دخول الآن",
          style: TextStyle(fontSize: 18, fontFamily: 'Tajawal'),
        ),
      ),
    );
  }
}
