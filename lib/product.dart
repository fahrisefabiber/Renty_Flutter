import 'package:cloud_firestore/cloud_firestore.dart';

class Product {
  String id;
  String title;
  String image;
  String explanation;
  String type;
  String price;
  String category;

  Product({this.id,
      this.category,
      this.explanation,
      this.image,
      this.price,
      this.title,
      this.type});

  factory Product.fromSnapshot(DocumentSnapshot snapshot) {
    return Product(
      id: snapshot.id,
      title: snapshot["title"],
      image: snapshot["image"],
      explanation: snapshot["explanation"],
      type: snapshot["type"],
      price: snapshot["price"],
      category: snapshot["category"],
    );
  }
}
