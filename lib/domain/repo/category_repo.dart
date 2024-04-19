import 'package:dartz/dartz.dart';
import 'package:scrap_app/core/network/failure.dart';
import 'package:scrap_app/domain/model/category/categories_model.dart';

abstract class CategoryRepo {
  Future<Either<Failure, CategoriesModel>> getCategories();
}
