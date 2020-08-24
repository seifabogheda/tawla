import 'package:flutter/material.dart';
class CustomTextField extends StatefulWidget {
  final String hint;
  //The Hint of _errorMessage make a dynamic error Validator
  const CustomTextField({@required this.hint});

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  String  errorMessage(String _error){
    switch(widget.hint){
      case 'رقم الجوال' : return 'خانة رقم الجوال فارغة';
      case 'كلمة المرور' : return 'خانة كلمةالمرور فارغة';
    }
  }
  @override
  Widget build(BuildContext context) {
    bool _obscureText = true;
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 15),
        // Validator : is used to make sure if the TextFormField isn't Empty important
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: TextFormField(
            validator: (value){
              if(value.isEmpty){
                return errorMessage(widget.hint);
              }return '';
            },
            decoration: InputDecoration(
              suffixIcon: IconButton(icon: Icon(_obscureText ? Icons.visibility : Icons.visibility_off), onPressed: (){
               setState(() {
                 _obscureText = !_obscureText;
               });
              }),
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
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
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