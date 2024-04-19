import 'package:dartz/dartz.dart';
import 'package:scrap_app/core/network/failure.dart';
import 'package:scrap_app/data/sources/source_base/category_source.dart';
import 'package:scrap_app/domain/model/category/categories_model.dart';
import 'package:scrap_app/domain/repo/category_repo.dart';

class CategoryRepoImplementation implements CategoryRepo {
  final CategorySource _categorySource;

  CategoryRepoImplementation({required CategorySource categorySource})
      : _categorySource = categorySource;
  @override
  Future<Either<Failure, CategoriesModel>> getCategories() async {
    try {
      final response = await _categorySource.categorySource();
      final categories = CategoriesModel.fromJson(response['dats']);
      return Right(categories);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}
