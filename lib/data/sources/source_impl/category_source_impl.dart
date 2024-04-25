import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:scrap_app/data/sources/source_base/category_source.dart';

class CategorySourceImplementation implements CategorySource {
  @override
  Future<Map<String, dynamic>> categorySource() async {
    final json = await rootBundle.loadString("assets/jsons/categories.json");
    final Map<String, dynamic> response = jsonDecode(json);
    return response;
  }

  @override
  Future<Map<String, dynamic>> categorySourceDetails() async {
    final json = await rootBundle.loadString('assets/jsons/category.json');
    final Map<String, dynamic> response = jsonDecode(json);
    return response;
  }
}
