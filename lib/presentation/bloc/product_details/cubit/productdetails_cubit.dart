import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:scrap_app/domain/model/product/product_model.dart';
import 'package:scrap_app/domain/repo/products_repo.dart';

part 'productdetails_cubit.freezed.dart';
part 'productdetails_state.dart';

class ProductDetailsCubit extends Cubit<ProductDetailsState> {
  ProductDetailsCubit({required this.repo})
      : super(const ProductDetailsState.loading());

  final ProductsRepo repo;

  Future<void> fetchProductDetails() async {
    final result = await repo.getProductDetails();
    result.fold((failure) => emit(const _Loading()),
        (product) => emit(_Success(product)));
  }
}
