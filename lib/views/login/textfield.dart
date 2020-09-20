import 'package:flutter/material.dart';
import 'package:tawla_training/views/login/email_textfield.dart';
import 'package:tawla_training/views/widgets/custom_TextFormField.dart';
import 'package:tawla_training/views/widgets/text.dart';

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
              padding: EdgeInsets.only(
                  right: MediaQuery.of(context).size.height * 0.06),
              child: Texts(text: "رقم الجوال",text2: '',),
            ),
            LoginEmailTextField(
              hint: "ادخل الجوال",
            ),
            Padding(
                padding: EdgeInsets.only(
                    right: MediaQuery.of(context).size.height * 0.06),
                child: Texts(text: "كلمة المرور",text2: '',),),
            CustomTextField(hint: 'كملة المرور'),
          ],
        ),
      ),
    );
  }
}
