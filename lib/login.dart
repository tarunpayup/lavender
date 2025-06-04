
import 'package:flutter/material.dart';

class LoginTab extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(24),
        child: Column(
          children: [
            TextField(decoration: InputDecoration(labelText: "Email",border: OutlineInputBorder()),),
            SizedBox(height: 25,),
            TextField(decoration: InputDecoration(labelText: "Password",border: OutlineInputBorder()), obscureText: true,),
            SizedBox(height: 20),
            ElevatedButton(onPressed: (){}, child: Text("Login"))
          ],
        ),
      ),
      
    );
  }
}