import 'package:flutter/material.dart';
import './views/sing_in_page.dart';
import './views/sing_up_page.dart';

void main() {
  runApp(LoginPage());
}

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LoginPageState();
  }
}

class LoginPageState extends State<StatefulWidget> {
  var _flag = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: _flag
              ? Column(
                  children: [
                    SingIn(),
                    SizedBox(height: 55),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "I'm a new user,",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                        TextButton(
                            style: TextButton.styleFrom(
                              textStyle: const TextStyle(fontSize: 15),
                            ),
                            onPressed: () {
                              setState(() {
                                _flag = false;
                              });
                            },
                            child: const Text(
                              'Sign Up',
                              style: TextStyle(color: Colors.pink),
                            )),
                      ],
                    ),
                  ],
                )
              : Column(
                  children: [
                    SingUp(),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "I'm a new user,",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                        TextButton(
                            style: TextButton.styleFrom(
                              textStyle: const TextStyle(fontSize: 15),
                            ),
                            onPressed: () {
                              setState(() {
                                _flag = true;
                              });
                            },
                            child: const Text(
                              'Sign In',
                              style: TextStyle(color: Colors.pink),
                            )),
                      ],
                    )
                  ],
                ),
        ));
  }
}
