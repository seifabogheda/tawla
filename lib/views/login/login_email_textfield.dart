import 'package:flutter/material.dart';

class LoginEmailTextField extends StatefulWidget {
  final String hint;
  //The Hint of _errorMessage make a dynamic error Validator
  const LoginEmailTextField({@required this.hint});

  @override
  _LoginEmailTextFieldState createState() => _LoginEmailTextFieldState();
}

class _LoginEmailTextFieldState extends State<LoginEmailTextField> {
  String errorMessage(String _error) {
    switch (widget.hint) {
      case 'رقم الجوال':
        return 'خانة رقم الجوال فارغة';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 15),
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: TextFormField(
            validator: (value) {
              if (value.isEmpty) {
                return errorMessage(widget.hint);
              }
              return '';
            },
            decoration: InputDecoration(
              hintText: widget.hint,
              fillColor: Colors.white,
              filled: true,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(35),
                borderSide: BorderSide(
                  color: Colors.white,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(35),
                borderSide: BorderSide(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
