part of 'productdetails_cubit.dart';

@freezed
class ProductDetailsState with _$ProductDetailsState {
  const factory ProductDetailsState.loading() = _Loading;
  const factory ProductDetailsState.success(ProductModel product) = _Success;
}
