part of 'products_cubit.dart';

@freezed
class ProductsState with _$ProductsState {
  const factory ProductsState.loading() = _Loading;
  const factory ProductsState.success(ProductsModel products) = _Success;
}
