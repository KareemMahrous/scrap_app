import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:scrap_app/domain/repo/category_repo.dart';

part 'category_details_state.dart';
part 'category_details_cubit.freezed.dart';

class CategoryDetailsCubit extends Cubit<CategoryDetailsState> {
  CategoryDetailsCubit({required this.categoryRepo})
      : super(const CategoryDetailsState.loading());
  final CategoryRepo categoryRepo;
  Future<void> fetchCategoryDetails() async {
    final result = await categoryRepo.getCategoriesDetails();
    result.fold((failure) => emit(const _Loading()),
        (category) => emit(const _Success()));
  }
}
