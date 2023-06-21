import 'package:flutter/material.dart';

class FacebookButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(13),
      child: Stack(
        children: <Widget>[
          Positioned.fill(
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.grey,
              ),
            ),
          ),
          TextButton(
            style: TextButton.styleFrom(
              padding: const EdgeInsets.all(16.0),
              primary: Colors.blue[900],
              textStyle: const TextStyle(fontSize: 15),
            ),
            onPressed: () {
              print("connect with facebook button");
            },
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.facebook),
                  SizedBox(
                    width: 8.0,
                  ),
                  Text(
                    'Connect with Facebook',
                    //textAlign: TextAlign.center,
                  ),
                ],
              ),
              width: MediaQuery.of(context).size.width - 32.0,
            ),
          ),
        ],
      ),
    );
  }
}
