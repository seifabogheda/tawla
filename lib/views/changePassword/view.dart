import 'package:flutter/material.dart';
import 'package:tawla_training/views/widgets/backbutton.dart';
import 'package:tawla_training/views/new_pass/button.dart';
import 'package:tawla_training/views/widgets/backgroundwithshado.dart';
import 'package:tawla_training/views/widgets/custom_TextFormField.dart';
import 'package:tawla_training/views/widgets/nicknameTextFields.dart';
import 'package:tawla_training/views/widgets/text.dart';
import 'package:tawla_training/views/widgets/logo.dart';


class NewPassword extends StatefulWidget {
  @override
  _NewPasswordState createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> {
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
                Texts(text: 'من فضلك ادخل كلمة مرور جديدة حتي تتمكن من',text2: ' الدخول مرة أخري إلي حسابك',),
                SizedBox(height: 30,),
               Row(
                 mainAxisAlignment: MainAxisAlignment.end,
                 children: [
                   NickNameFields(nickNameField: 'كلمة المرور الجديدة',),
                 ],
               ),
                CustomTextField(hint: 'كلمة المرور',),

                NewPassButton(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
