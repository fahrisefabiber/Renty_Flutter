
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:renty_flutter/product.dart';
import 'package:renty_flutter/storage_service.dart';
import 'package:image_picker/image_picker.dart';

class ProductService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<void> addProduct(String title, String explanation,
      String type, String price, String category) async {
    var ref = _firestore.collection("Product");


    var documentRef = await ref.add({
      'title': title,
      'explanation': explanation,
      'type': type,
      'price': price,
      'category': category,
    });

    return Product(
        id: documentRef.id,
        title: title,
        explanation: explanation,
        type: type,
        price: price,
        category: category);
  }
}
