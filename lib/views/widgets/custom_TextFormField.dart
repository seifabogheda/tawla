import 'package:flutter/material.dart';
class CustomTextField extends StatefulWidget {
  final String hint;
  const CustomTextField({@required this.hint,});

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool _obscureText = true;
  void _visibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 15),
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: TextFormField(
          decoration: InputDecoration(
            hintText: widget.hint,
            suffixIcon: widget.hint == 'كلمة المرور'
                ? IconButton(
              onPressed: _visibility,
              icon: _obscureText
                  ? Icon(Icons.visibility_off,color: Color(0xffE082B4),)
                  : Icon(Icons.visibility,color: Color(0xffE082B4)),)
                : null,
            hintStyle: TextStyle(
              fontFamily: 'Tajawal',
            ),
            fillColor: Colors.white,
            filled: true,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(
                color: Colors.white,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(
                color: Colors.white,
              ),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(
                color: Colors.white,
              ),
            ),
          ),
          obscureText: widget.hint =='كلمة المرور' ? _obscureText :false,
        ),
      ),
    );
  }
}