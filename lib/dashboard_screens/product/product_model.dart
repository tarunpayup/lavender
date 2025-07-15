class Product{
  final String id;
  final String title;
  final String images;
  final double price;
  final double mrp;
  final double rating;
  final int reviews;

Product({
  required this.id,
  required this.title,
  required this.images,
  required this.price,
  required this.mrp,
  required this.rating,
  required this.reviews
}) ;

factory Product.fromJson(Map<String,dynamic> json){
  return Product(
    id: json["id"].toString(), 
    title: json["title"], 
    images: json["image"],
    price: double.parse(json["price"].toString()), 
    mrp: double.parse(json["mrp"].toString()), 
    rating: double.parse(json["id"].toString()), 
    reviews: int.parse(json["id"].toString())
    );
}

}

