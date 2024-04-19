import 'package:dartz/dartz.dart';
import 'package:scrap_app/core/network/failure.dart';
import 'package:scrap_app/domain/model/product/product_model.dart';

import '../model/product/products_model.dart';

abstract class ProductsRepo {
  Future<Either<Failure, ProductsModel>> getProducts();
  Future<Either<Failure, ProductModel>> getProductDetails();
}
