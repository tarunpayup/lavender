import 'package:flutter/material.dart';
import 'package:lavender_app/dashboard_screens/product/product_model.dart';

class ProductDetailScreen extends StatelessWidget{
    final Product product;
    const ProductDetailScreen({required this.product});
    @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10,),
            Container(
              height: 200,
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(product.images),
                  fit: BoxFit.contain
                  ),
                  borderRadius: BorderRadius.circular(16),
              ),
            ),
            SizedBox(height: 20,),
            Card(
              margin: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(product.title,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                  SizedBox(height: 10,),
                  Text("${product.price.toStringAsPrecision(2)}",style: TextStyle(fontSize: 16, color: Colors.green.shade700),),

                ],
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(horizontal: 12,vertical: 4),
              child: Padding(padding: EdgeInsets.all(6),child: Text("This is a dummy feature card"),),
            ),
            SizedBox(height: 10,),
            Card(
              margin: EdgeInsets.symmetric(horizontal: 12,vertical: 4),
              child: Padding(padding: EdgeInsets.all(6),child: Text("This is a dummy feature card"),),
            ),
          ],

        ),
      ),
    );

  }

}

