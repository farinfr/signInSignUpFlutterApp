import 'package:flutter/material.dart';

class MyTextFeild extends StatelessWidget {
  final String _labelText;

  MyTextFeild(this._labelText);
  @override
  Widget build(BuildContext context) {
    return TextField(
        obscureText: true,
        decoration: InputDecoration(
          labelText: this._labelText,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.pink),
            borderRadius: BorderRadius.circular(13),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(13),
            gapPadding: 0.0,
          ),
        ));
  }
}
