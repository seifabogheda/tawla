import 'package:flutter/material.dart';
import 'package:tawla_training/views/activation_code/pincode.dart';
import 'package:tawla_training/views/widgets/backbutton.dart';
import 'package:tawla_training/views/widgets/backgroundwithshado.dart';
import 'package:tawla_training/views/widgets/logo.dart';
import 'package:tawla_training/views/widgets/text.dart';

import 'button.dart';


class ActivationCode extends StatefulWidget {
  @override
  _ActivationCodeState createState() => _ActivationCodeState();
}

class _ActivationCodeState extends State<ActivationCode> {
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
                Texts(text: 'من فضلك ادخل كود التفعيل المرسل إليك علي',text2:' رقم جوالك'),
                PinCode(),
                Button(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
