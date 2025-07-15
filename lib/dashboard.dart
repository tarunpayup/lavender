import 'package:flutter/material.dart';
import 'package:lavender_app/dashboard_screens/dashboard_cart.dart';
import 'package:lavender_app/dashboard_screens/dashboard_home.dart';
import 'package:lavender_app/dashboard_screens/dashboard_person.dart';
import 'package:lavender_app/dashboard_screens/product/product_screen.dart';

class Dashboard extends StatefulWidget{
  @override
  _Dashboard createState() => _Dashboard();
}

class _Dashboard extends State<Dashboard>{
  int _currentIndex = 0;
  final List<Widget> _screens = [
    DashboardHome(),//0
    ProductScreen(),//1
    DashboardPerson()//2
  ];
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Lavender App",style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.purple[400],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.all(5),
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.purple[400]),
              child: Text("Welcome!",style: TextStyle(color: Colors.white,fontSize: 24),
              )
              ),
              ListTile(
                leading:Icon(Icons.home),
                title: Text("Home"),
                onTap: (){
                  Navigator.pop(context);
                  setState(() {
                    _currentIndex=0;
                  });
                },
              ),
              ListTile(
                leading:Icon(Icons.shopping_cart),
                title: Text("Cart"),
                onTap: (){
                  Navigator.pop(context);
                  setState(() {
                    _currentIndex = 1;
                  });
                },
              ),        
              ListTile(
                leading:Icon(Icons.person),
                title: Text("Profile"),
                onTap: (){
                  Navigator.pop(context);
                  setState(() {
                    _currentIndex=2;
                  });
                },
              ),                        
          ],
        ),
      ),
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor: Colors.purple[400],
        onTap: (index)=>setState(() {
          _currentIndex = index;
        }),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),label: "Cart"),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile")
        ],
      ),
    );
  } 
}