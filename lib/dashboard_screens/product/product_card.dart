import 'package:flutter/material.dart';
import 'package:lavender_app/dashboard_screens/product/product_detail_screen.dart';
import 'package:lavender_app/dashboard_screens/product/product_model.dart';

class ProductCard extends StatefulWidget{
  final Product product;
  const ProductCard({required this.product});

  @override
  State<ProductCard> createState()=> _ProductCardState();
}
class _ProductCardState extends State<ProductCard>{
  int quantity = 0;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(
          context, 
          PageRouteBuilder(
            transitionDuration: Duration(milliseconds: 400),
            pageBuilder: (_,__,___)=>ProductDetailScreen(product:widget.product),
            transitionsBuilder: (_,animation,__,child){
              return FadeTransition(opacity: animation,child: child,);
            }
          ));
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)
        ),
        elevation: 4,
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              //Image Container
              Container(
                width: double.infinity,
                height: 90,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image:NetworkImage(widget.product.images),
                    fit: BoxFit.cover,
                    ),
                ),
              ),
              SizedBox(height: 10,),
              Text(
                widget.product.title,
                style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,              
              ),
              SizedBox(height: 8,),
              Row(
                children: [
                  ...List.generate(
                    5, 
                    (index){
                      return Icon(index <widget.product.rating.round()? Icons.star:Icons.star_border,
                      size: 12,
                      color: Colors.orange,
                      );
                    }),
                    SizedBox(width: 4,),
                    Text("(${widget.product.reviews})",style: TextStyle(fontSize: 8),)
                ],
              ),
              SizedBox(height: 4,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("${widget.product.price.toStringAsFixed(2)}",
                  style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),
                  ),
                  Text("${widget.product.mrp.toStringAsFixed(2)}",
                  style: TextStyle(fontSize: 8,color: Colors.grey,decoration: TextDecoration.lineThrough),
                  ),
                ],
              ),
              Spacer(),
              Align(
                alignment: Alignment.bottomRight,
                child: quantity == 0 ? ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                    padding: EdgeInsets.symmetric(horizontal: 12,vertical: 4),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                      side: BorderSide(color:Colors.black)
                    ),
                    textStyle: TextStyle(fontSize: 10),
                  ),
                  onPressed: (){
                    setState(() {
                      quantity = 1;
                    });
                  },
                  child: Text("Add"),
                ):Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    OutlinedButton(
                      onPressed: (){
                        setState(() {
                          quantity --;
                          if(quantity == 0) return;
                        });
                      }, 
                      child: Text("-",style: TextStyle(color: Colors.black),)),

                      Text("$quantity",style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),),

                    OutlinedButton(
                      onPressed: (){
                        setState(() {
                          quantity ++;
                          
                        });
                      }, 
                      child: Text("+",style: TextStyle(color: Colors.black),)),

                  ],
                )
                
                
              )

            ],
          ),
          ),
      ),
    );
  }
}