import 'package:flutter/material.dart';
import 'package:renty_flutter/myBottomNavBar.dart';
import 'package:renty_flutter/mydrawer.dart';
import 'package:renty_flutter/product_service.dart';

class AddProductPage extends StatefulWidget {
  @override
  _AddProductPageState createState() => _AddProductPageState();
}

class _AddProductPageState extends State<AddProductPage> {
  ProductService _productService = ProductService();
  TextEditingController titleController = TextEditingController();
  TextEditingController explanationController = TextEditingController();
  TextEditingController typeController = TextEditingController();
  TextEditingController priceController = TextEditingController();
  TextEditingController categoryController = TextEditingController();
  String value = "";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(0, 38, 26, 1),
      drawer: MyDrawer(),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(0, 90, 63, 1),
        title: Text('Ürün Ekle'),
      ),
      bottomNavigationBar: MyBottomNavBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            TextField(
                controller: titleController,
                decoration: InputDecoration(
                    hintText: "Başlık",
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(32.0)))),
            SizedBox(
              height: 10,
            ),
            TextField(
                controller: explanationController,
                maxLines: 2,
                decoration: InputDecoration(
                    hintText: "Açıklama Yazın",
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(32.0)))),
            SizedBox(
              height: 10,
            ),
            TextField(
                controller: typeController,
                maxLines: 2,
                decoration: InputDecoration(
                    hintText: "Çeşit Seçin",
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(32.0)))),
            SizedBox(
              height: 10,
            ),
            TextField(
                controller: priceController,
                maxLines: 2,
                decoration: InputDecoration(
                    hintText: "Fiyat Belirleyin",
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(32.0)))),
            SizedBox(
              height: 10,
            ),
            TextField(
                controller: categoryController,
                maxLines: 2,
                decoration: InputDecoration(
                    hintText: "Kategori Seçin",
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(32.0)))),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8, bottom: 25),
              child: InkWell(
                onTap: () {
                  _productService.addProduct(
                      titleController.text,
                      typeController.text,
                      explanationController.text,
                      priceController.text,
                      categoryController.text);
                },
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.blue, width: 2),
                      //color: colorPrimaryShade,
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Center(
                        child: Text(
                      "Ekle",
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 20,
                      ),
                    )),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
