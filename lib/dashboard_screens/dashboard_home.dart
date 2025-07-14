import 'package:flutter/material.dart';

class DashboardHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          // Greeting/Banner
          Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.purple[100],
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              children: [
                Icon(Icons.store, size: 40, color: Colors.purple),
                SizedBox(width: 12),
                Expanded(
                  child: Text(
                    "Welcome back to Lavender Store!",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.purple[900],
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),

          SizedBox(height: 24),

          // Shortcut Buttons
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildShortcut(icon: Icons.shopping_bag, label: "Shop"),
              _buildShortcut(icon: Icons.favorite, label: "Wishlist"),
              _buildShortcut(icon: Icons.local_offer, label: "Offers"),
              _buildShortcut(icon: Icons.support_agent, label: "Support"),
            ],
          ),

          SizedBox(height: 24),

          // Recent Orders Title
          Text(
            "Recent Orders",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 12),

          // Recent Orders List
          ListView.builder(
            itemCount: 3,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return Card(
                margin: EdgeInsets.only(bottom: 12),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                child: ListTile(
                  leading: Icon(Icons.inventory, color: Colors.purple),
                  title: Text("Order #100${index + 1}"),
                  subtitle: Text("Status: Shipped"),
                  trailing: Icon(Icons.arrow_forward_ios, size: 16),
                ),
              );
            },
          ),

          SizedBox(height: 24),

          // Featured Products Horizontal Scroll
          Text(
            "Featured Products",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 12),

          Container(
            height: 160,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context, index) {
                return Container(
                  width: 140,
                  margin: EdgeInsets.only(right: 12),
                  decoration: BoxDecoration(
                    color: Colors.purple[50],
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.purple.shade100),
                  ),
                  padding: EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Icon(Icons.shopping_cart_outlined, size: 40, color: Colors.purple),
                      ),
                      SizedBox(height: 8),
                      Text("Product ${index + 1}", style: TextStyle(fontWeight: FontWeight.bold)),
                      Text("₹${999 + index * 100}"),
                    ],
                  ),
                );
              },
            ),
          ),

          SizedBox(height: 24),

          // Offer Card
          Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.purple[300]!, Colors.purple[100]!],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Row(
              children: [
                Icon(Icons.card_giftcard, size: 40, color: Colors.white),
                SizedBox(width: 16),
                Expanded(
                  child: Text(
                    "Flat 20% OFF on your first order!\nUse code: LAVENDER20",
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildShortcut({required IconData icon, required String label}) {
    return Column(
      children: [
        CircleAvatar(
          radius: 28,
          backgroundColor: Colors.purple[200],
          child: Icon(icon, size: 28, color: Colors.white),
        ),
        SizedBox(height: 6),
        Text(label, style: TextStyle(fontSize: 12)),
      ],
    );
  }
}
