import 'package:flutter/material.dart';

class LoginPasswordTextField extends StatefulWidget {
  final String hint;
  const LoginPasswordTextField({@required this.hint});

  @override
  _LoginPasswordTextFieldState createState() => _LoginPasswordTextFieldState();
}

class _LoginPasswordTextFieldState extends State<LoginPasswordTextField> {

  String errorMessage(String _error) {
    switch (widget.hint) {
      case 'كلمة المرور':
        return 'خانة كلمةالمرور فارغة';
    }
  }

  @override
  Widget build(BuildContext context) {
    bool _obscureText = false;
    void _visibility() {
      setState(() {
        _obscureText = !_obscureText;
      });
    }

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
            obscureText: widget.hint == 'كلمة المرور' ? true : false,
            decoration: InputDecoration(
              hintText: widget.hint,
              suffixIcon: widget.hint == 'كلمة المرور'
                  ? IconButton(
                      icon: _obscureText
                          ? Icon(Icons.visibility_off)
                          : Icon(Icons.visibility),
                      onPressed: _visibility)
                  : null,
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
