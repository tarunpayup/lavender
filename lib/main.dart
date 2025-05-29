import 'package:flutter/material.dart';
import 'package:lavender_app/splash_screen.dart';

void main(){
  //root widget
  runApp(Lavender_Root_Widget());
}

class Lavender_Root_Widget extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "Lavender Floral App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFFB57EDC),
        scaffoldBackgroundColor: Color(0xFFF3E5F5),
        textTheme: TextTheme(
          bodyMedium: TextStyle(color: Colors.deepPurple[900])
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xFFB57EDC),
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))
          )
        )
      ),
      home: SplashScreen(),
    );
  }
}