part of 'category_details_cubit.dart';

@freezed
class CategoryDetailsState with _$CategoryDetailsState {
  const factory CategoryDetailsState.loading() = _Loading;
  const factory CategoryDetailsState.success() = _Success;
}
