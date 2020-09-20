import 'package:flutter/material.dart';
import 'package:tawla_training/views/signup/emailtextfield.dart';
import 'package:tawla_training/views/signup/nicknameTextFields.dart';
import 'package:tawla_training/views/signup/passwordtextfield.dart';
import 'package:tawla_training/views/signup/textname.dart';

class SignUpTextFields extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Directionality(
          textDirection: TextDirection.rtl,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 30),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: SignUpNickNameFields(
                        nickNameField: 'الاسم الآول',
                      ),
                    ),
                    Expanded(
                      child: SignUpNickNameFields(
                        nickNameField: 'الاسم الآخير',
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: SignUpNameTextField(hint: 'الاسم الآول'),
                  ),
                  Expanded(
                    child: SignUpNameTextField(hint: 'الاسم الآخير'),
                  ),
                ],
              ),
              SignUpNickNameFields(
                nickNameField: 'البريد الالكتروني',
              ),
              SignUpEmailTextField(hint: 'البريد الالكتروني'),
              SignUpNickNameFields(
                nickNameField: 'رقم الجوال',
              ),
              SignUpNameTextField(hint: 'رقم الجوال'),
              SignUpNickNameFields(
                nickNameField: 'كلمة المرور',
              ),
              SignUpPasswordTextField(hint: 'كلمة المرور'),
            ],
          )),
    );
  }
}
