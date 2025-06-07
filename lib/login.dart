
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class LoginTab extends StatefulWidget{
  _LoginTabState createState()=> _LoginTabState();
}

class _LoginTabState extends State<LoginTab>{

  final emailController = TextEditingController();//Data Handlers
  final passwordController = TextEditingController();//Data Handlers

 Future<void> loginUser() async{
  final response = await http.post(
    Uri.parse("https://www.tarunbansal.co.in/android/flutter/logi.php"),//404 -> Invalid URL
    body: {
      "email":emailController.text.trim(),
      "password":passwordController.text.trim()
    }
  );

  if(response.statusCode == 200 && response.body.contains("success")){
    print("response code is -  ${response.statusCode}");
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Login Successful")));
  }else if(response.statusCode==404){
    print(response.statusCode);
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Invalid URL")));
  }else if(response.body.contains("errror")){
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Invalid Credentials")));
  }
 }

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
            ElevatedButton(onPressed: loginUser, child: Text("Login"))
          ],
        ),
      ),
      
    );
  }
}