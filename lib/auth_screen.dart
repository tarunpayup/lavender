import 'package:flutter/material.dart';
import 'package:lavender_app/login.dart';
import 'package:lavender_app/signup.dart';

class AuthScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {  // <-- fixed typo here
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFB57EDC),
          title: Text("Welcome"),
          bottom: TabBar(
            indicatorColor: Colors.white,
            labelStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            tabs: [
              Tab(text: "Login"),
              Tab(text: "Signup"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            LoginTab(),
            SignupTab(),
          ],
        ),
      ),
    );
  }
}
