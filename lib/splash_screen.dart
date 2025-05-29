import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget{
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFFE1BEE7),
              Color(0xFFCE93D8)
              ],
              begin: Alignment.topLeft,end: Alignment.topRight
              )),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.spa,size: 100,color: Colors.white,),
              SizedBox(height: 20,),
              Text("Lavender Floral",style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold,color: Colors.white),)
              
              ],
          ),
        ),
      ),
    );
  }
}