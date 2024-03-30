import 'package:flutter/material.dart';

class Product {
  late ImageProvider _productImage;
  late double _productPrice;
  late String _productName;
  late String _cafeName;

  Product(
      {required ImageProvider productImage,
      required double productPrice,
      required String productName,
      required String cafeName}) {
    this._productImage = productImage;
    this._productPrice = productPrice;
    this._productName = productName;
    this._cafeName = cafeName;
  }

  ImageProvider getImage() => _productImage;
  double getProductPrice() => _productPrice;
  String getProductName() => _productName;
  String getCafeName() => _cafeName;

  static List<Product> ProductList = [
    Product(
        productImage: AssetImage('assets/images/RiceAndCurry.png'),
        productPrice: 120.0,
        productName: "Rice and Curry",
        cafeName: "So Cafe"),
    Product(
        productImage: AssetImage('assets/images/RiceAndCurry.png'),
        productPrice: 220.0,
        productName: "Kottu Roti",
        cafeName: "So Cafe"),
    Product(
        productImage: AssetImage('assets/images/RiceAndCurry.png'),
        productPrice: 120.0,
        productName: "Rice with fish",
        cafeName: "So Cafe"),
    Product(
        productImage: AssetImage('assets/images/RiceAndCurry.png'),
        productPrice: 120.0,
        productName: "Rice with kottu",
        cafeName: "So Cafe"),
    Product(
        productImage: AssetImage('assets/images/RiceAndCurry.png'),
        productPrice: 120.0,
        productName: "Rice with kottu",
        cafeName: "So Cafe"),
    Product(
        productImage: AssetImage('assets/images/RiceAndCurry.png'),
        productPrice: 120.0,
        productName: "Rice with kottu",
        cafeName: "So Cafe"),
  ];

  static List<Product> getProductList() => ProductList;
}
