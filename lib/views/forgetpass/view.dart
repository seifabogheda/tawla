import 'package:flutter/material.dart';
import 'package:tawla_training/views/widgets/backgroundwithshado.dart';
import 'package:tawla_training/views/widgets/custom_TextFormField.dart';
import 'package:tawla_training/views/widgets/text.dart';
import 'package:tawla_training/views/widgets/logo.dart';
import 'backbutton.dart';
import 'button.dart';

class ForgetPassword extends StatefulWidget {
  @override
  _ForgetPasswordState createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: <Widget>[
            BackgroundWithShadow(),
           ListView(
             children: <Widget>[
               Back(),
               Logo(),
               Texts(text: 'من فضلك ادخل رقم جوالك حتي تتمكن من تغيير',text2: 'كلمة المرور الخاصة بك',),
               CustomTextField(hint: 'رقم الجوال'),
               Button(),
             ],
           ),
          ],
        ),
      ),
    );
  }
}
