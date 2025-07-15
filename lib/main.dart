import 'package:flutter/material.dart';
import 'package:lavender_app/splash_screen.dart';
import 'dashboard_screens/product/product_provider.dart';
import 'package:provider/provider.dart';
void main(){
  //root widget
  runApp(
    MultiProvider(
      providers:[
    ChangeNotifierProvider(create: (_)=>ProductProvide()),
  ],child: Lavender_Root_Widget(),
  
   ));
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