import 'package:dartz/dartz.dart';
import 'package:scrap_app/core/network/failure.dart';
import 'package:scrap_app/data/sources/source_base/products_source.dart';
import 'package:scrap_app/domain/model/product/product_model.dart';
import 'package:scrap_app/domain/model/product/products_model.dart';
import 'package:scrap_app/domain/repo/products_repo.dart';

class ProductsRepoImpl implements ProductsRepo {
  final ProductsSource _source;

  ProductsRepoImpl({required ProductsSource source}) : _source = source;
  @override
  Future<Either<Failure, ProductsModel>> getProducts() async {
    try {
      final response = await _source.productsSource();
      final products = ProductsModel.fromJson(response['data']);
      return Right(products);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, ProductModel>> getProductDetails() async {
    try {
      final response = await _source.productDetails();
      final prouductDetails = ProductModel.fromJson(response['data']);
      return Right(prouductDetails);
    } catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }
}
