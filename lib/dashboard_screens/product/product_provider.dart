import 'package:flutter/material.dart';
import 'package:lavender_app/dashboard_screens/product/product_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ProductProvide with ChangeNotifier{
  List<Product> _products = [];//setter
  List<Product> get products => _products;//getter

  Future<void> fetchProducts() async{
    final String url = "https://www.tarunbansal.co.in/android/flutter/get_products.php";
    final response = await http.get(Uri.parse(url));
    if(response.statusCode==200){
      List<dynamic> data = json.decode(response.body);
      _products = data.map((item)=> Product.fromJson(item)).toList();
      notifyListeners();
    }else{
      throw Exception("Failed to load products");
    }

  }

}