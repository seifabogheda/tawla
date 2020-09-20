import 'package:flutter/material.dart';

class SignUpNickNameFields extends StatelessWidget {
  final String nickNameField;

  const SignUpNickNameFields({Key key, this.nickNameField}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    
    return Padding(
      padding: EdgeInsets.only(
          right: MediaQuery.of(context).size.height * 0.05),
      child: Text(
        nickNameField,
        style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 17,
            fontFamily: 'Tajawal'),
      ),
    );
  }
}
