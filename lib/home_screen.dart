import 'package:flutter/material.dart';
import 'package:my_flutter_app/login_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.red),
              ),
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.all(10),
              child: const Text('Hello'),
            ),
            const Text("Welcome to Flutter"),
            TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginScreen()));
                },
                child: const Text('Login')),
          ]),
        ));
  }
}
