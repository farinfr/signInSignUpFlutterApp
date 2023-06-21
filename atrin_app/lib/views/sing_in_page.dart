import 'package:flutter/material.dart';
import './login_button.dart';
import './facebook_button.dart';
import './text_field.dart';

class SingIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const SizedBox(height: 40),
          Text("Welcome,",
              style: TextStyle(
                color: Colors.black,
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              )),
          Text("Sing in to continue!",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              )),
          const SizedBox(height: 70),
          MyTextFeild("Email ID"),
          const SizedBox(height: 13),
          MyTextFeild("Password"),
          Row(
            children: [
              const SizedBox(width: 210),
              TextButton(
                style: TextButton.styleFrom(
                  //padding: const EdgeInsets.all(5.0),
                  primary: Colors.black,
                  textStyle: const TextStyle(
                    fontSize: 12.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onPressed: () {
                  print("press Forget button");
                },
                child: const Text('Forget Password?'),
              ),
            ],
          ),
          const SizedBox(height: 30),
          LoginButton(),
          const SizedBox(height: 10),
          FacebookButton(),
        ],
      ),
    );
  }
}
