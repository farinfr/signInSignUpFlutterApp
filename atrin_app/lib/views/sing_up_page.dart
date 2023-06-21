import 'package:atrin_app/views/text_field.dart';
import 'package:flutter/material.dart';
import './login_button.dart';
import './facebook_button.dart';

class SingUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const SizedBox(height: 40),
          Text("Create Account,",
              style: TextStyle(
                color: Colors.black,
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              )),
          Text("Sing up to get started!",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              )),
          const SizedBox(height: 70),
          MyTextFeild("Full Name"),
          SizedBox(height: 10),
          MyTextFeild("Email ID"),
          SizedBox(height: 10),
          MyTextFeild("Password"),
          const SizedBox(height: 50),
          LoginButton(),
          const SizedBox(height: 10),
          FacebookButton(),
        ],
      ),
    );
  }
}
