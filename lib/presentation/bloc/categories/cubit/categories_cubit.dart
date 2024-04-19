import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:scrap_app/domain/repo/category_repo.dart';

part 'categories_cubit.freezed.dart';
part 'categories_state.dart';

class CategoriesCubit extends Cubit<CategoriesState> {
  CategoriesCubit({required this.categoryRepo})
      : super(const CategoriesState.loading());
  final CategoryRepo categoryRepo;
  Future<void> fetchCategories() async {
    final result = await categoryRepo.getCategories();
    result.fold((failure) => emit(const _Loading()),
        (categories) => emit(const _Success()));
  }
}
