import 'package:flutter/material.dart';

class ForgetPassTextField extends StatefulWidget {
  final String hint;
  //The Hint of _errorMessage make a dynamic error Validator
  const ForgetPassTextField({@required this.hint});

  @override
  _ForgetPassTextFieldState createState() => _ForgetPassTextFieldState();
}

class _ForgetPassTextFieldState extends State<ForgetPassTextField> {
  String errorMessage(String _error) {
    switch (widget.hint) {
      case 'رقم الجوال':
        return 'خانة رقم الجوال فارغة';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*.05),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(
                right: MediaQuery.of(context).size.height * 0.06),
            child: Text(
              'رقم الجوال',
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 15,
                  fontFamily: 'Tajawal'),
            ),
          ),
          Form(
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
          ),
        ],
      ),
    );
  }
}
