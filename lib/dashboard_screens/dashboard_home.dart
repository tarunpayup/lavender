import 'package:flutter/material.dart';

class DashboardHome extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.purple[100],
              borderRadius: BorderRadius.circular(12)
            ),
            child: Row(
              children: [
                Icon(Icons.store,size: 40,color: Colors.purple,),
                SizedBox(
                  width: 12,
                ),
                Expanded(child: Text("Welcome to Lavendar Store!")),
                SizedBox(height: 30,),
                //ShortCut Buttons

               
              ],
              
            ),
          ),
          SizedBox(height: 50,),
           Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                      _buildShortcut(icon: Icons.shopping_bag, label: "Shop"),
                      _buildShortcut(icon: Icons.favorite, label: "Wishlist"),
                      _buildShortcut(icon: Icons.local_offer, label: "Offers"),
                      _buildShortcut(icon: Icons.support_agent, label: "Support"),
                  ],
                ),
            SizedBox(height: 50,),
            Text("Recent Orders"),
            ListView.builder(
              itemCount: 3,
              itemBuilder: (context,index){
                return Card(
                  margin: EdgeInsets.only(bottom: 12),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                  child: ListTile(
                    leading: Icon(Icons.inventory,color: Colors.purple,),
                    title: Text("Order #100${index+1}"),
                    subtitle: Text("Status: Shipped"),
                    trailing: Icon(Icons.arrow_forward,size: 16,),
                  ),
                );
              },
            ),
            SizedBox(height: 50,),
            Container(
              height: 100,
              child: ListView.builder(itemCount: 5, itemBuilder: (context,index){
                return Container(
                    width: 150,
                    margin: EdgeInsets.only(right: 12),
                    decoration: BoxDecoration(
                      color: Colors.purple[50],
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Colors.purple.shade100)
                    ),
                );
              },),
            )
        ],
      ),
    );
  }

  Widget _buildShortcut({required IconData icon, required String label}){
    return Column(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: Colors.purple[200],
          child: Icon(icon,size: 28, color: Colors.white,),
        ),
        SizedBox(
          height: 6,
        ),
        Text(label,style: TextStyle(fontSize: 12),)
      ],
    );

  }
}