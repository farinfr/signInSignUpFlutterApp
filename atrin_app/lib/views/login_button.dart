import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
//import 'package:http/http.dart' as http;


class LoginButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(13),
      child: Stack(
        children: <Widget>[
          Positioned.fill(
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: <Color>[
                    Color(0xFFF06292),
                    Color(0xFFF06292),
                    Color(0xFFFFB74D)
                  ],
                ),
              ),
            ),
          ),
          TextButton(
            style: TextButton.styleFrom(
              padding: const EdgeInsets.all(16.0),
              primary: Colors.white,
              textStyle: const TextStyle(fontSize: 20),
            ),
            onPressed: () {
              print("Login button");
            },
            child: Container(
                width: MediaQuery.of(context).size.width - 32.0,
                child: const Text(
                  'Login',
                  textAlign: TextAlign.center,
                )),
          ),
        ],
      ),
    );
  }
}
