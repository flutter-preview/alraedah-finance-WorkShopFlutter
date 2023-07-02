import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => LoginScreenState();
}

class LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                  padding: const EdgeInsets.all(10),
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.red)),
                  child: Column(
                    children: [
                      const Text('Please login'),
                      const TextField(
                        decoration: InputDecoration(hintText: 'Enter Username'),
                      ),
                      const TextField(
                        decoration: InputDecoration(hintText: 'Password'),
                        obscureText: true,
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text('Login'))
                    ],
                  )),
            ],
          ),
        ));
  }
}
