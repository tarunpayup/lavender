
import 'package:flutter/material.dart';

class SignupTab extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Padding(padding: EdgeInsets.all(24),
      child: Column(
        children: [
          TextField(decoration: InputDecoration(labelText: "Name",border: OutlineInputBorder()),),
          SizedBox(height: 20,),
          TextField(decoration: InputDecoration(labelText: "Email",border: OutlineInputBorder()),),
          SizedBox(height: 20,),
          TextField(decoration: InputDecoration(labelText: "Password",border: OutlineInputBorder()), obscureText: true,),
          SizedBox(height: 30,),
          ElevatedButton(onPressed: (){}, child: Text("Signup"))
        ],
      ),
      
      ),
    );
  }
}