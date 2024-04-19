import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:scrap_app/data/sources/source_base/products_source.dart';

class ProductsSourceImpl implements ProductsSource {
  @override
  Future<Map<String, dynamic>> productsSource() async {
    final json = await rootBundle.loadString("assets/jsons/products.json");
    final Map<String, dynamic> response = jsonDecode(json);

    return response;
  }

  @override
  Future<Map<String, dynamic>> productDetails() async {
    final json = await rootBundle.loadString("assets/jsons/product.json"); 
    final Map<String, dynamic> response = jsonDecode(json);
    return response;
  }
}
