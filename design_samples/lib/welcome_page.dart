import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset("pictures/etiya.png"),
            const Text("Welcome to Etiya", style: TextStyle(fontSize: 36)),
            ElevatedButton(
              onPressed: () {

              },
              child: const Text("Login"),
            ),
            ElevatedButton(
              onPressed: () {

              },
              child: const Text("Register"),
            ),
          ]
        ),
      ),
    );
  }
}
