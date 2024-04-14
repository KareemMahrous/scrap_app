import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:scrap_app/domain/repo/products_repo.dart';

import '../../../domain/model/product/products_model.dart';

part 'products_cubit.freezed.dart';
part 'products_state.dart';

class ProductsCubit extends Cubit<ProductsState> {
  final ProductsRepo repo;
  ProductsCubit({required this.repo}) : super(const ProductsState.loading());

  Future<void> fetchProducts() async {
    final result = await repo.getProducts();
    result.fold((failure) => emit(const _Loading()),
        (products) => emit(_Success(products)));
  }
}
