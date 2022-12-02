// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var userName = "";
  var password = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login App")),
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          TextField(
              onChanged: (value) {
                userName = value;
              },
              decoration: InputDecoration(
                  hintText: "User name", prefixIcon: Icon(Icons.people)),
              style: TextStyle(fontSize: 24)),
          TextField(
              obscureText: true,
              onChanged: (value) {
                password = value;
              },
              decoration: InputDecoration(
                  hintText: "Password", prefixIcon: Icon(Icons.password)),
              style: TextStyle(fontSize: 24)),
          ElevatedButton(
              onPressed: () {
                //logic
                print(userName);
                print(password);
              },
              child: Text("Login", style: TextStyle(fontSize: 24)))
        ]),
      ),
    );
  }
}
