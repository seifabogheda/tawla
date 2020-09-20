import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class PinCode extends StatefulWidget {
  @override
  _PinCodeState createState() => _PinCodeState();
}

class _PinCodeState extends State<PinCode> {
  TextEditingController textEditingController = TextEditingController();
  bool hasError = false;
  String currentText = "";
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  final formKey = GlobalKey<FormState>();
  
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(
            vertical: 8.0, horizontal: 30),
        child: PinCodeTextField(
          appContext: context,
          length: 4,
          obsecureText: false,
          animationType: AnimationType.fade,
          validator: (v) {
            if (v.length < 3) {
              return "I'm from validator";
            } else {
              return null;
            }
          },
          pinTheme: PinTheme(
            shape: PinCodeFieldShape.box,
            borderRadius: BorderRadius.circular(15),
            fieldHeight: 80,
            fieldWidth: 80,
            activeFillColor:
            hasError ? Colors.orange : Colors.white,
          ),
          animationDuration: Duration(milliseconds: 300),

          enableActiveFill: false,
         // errorAnimationController: errorController,
          controller: textEditingController,
          onCompleted: (v) {
          },
          onChanged: (value) {
            print(value);
            setState(() {
              currentText = value;
            });
          },
          beforeTextPaste: (text) {
            print("Allowing to paste $text");
            return true;
          },
        )
    );
  }
}
