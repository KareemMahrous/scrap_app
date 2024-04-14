import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:scrap_app/data/repo/products_repo.dart';
import 'package:scrap_app/data/sources/source_base/products_source.dart';
import 'package:scrap_app/data/sources/source_impl/products_source_impl.dart';
import 'package:scrap_app/domain/repo/products_repo.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'core/network/api_consumer.dart';
import 'core/network/dio_consumer.dart';

final GetIt getIt = GetIt.instance;

SharedPreferences sharedPreferences = getIt<SharedPreferences>();
Future<void> getItInit() async {
  sharedPreferences = await SharedPreferences.getInstance();

  await externalDependecies();
  coreDependecies();
  sources();
  repositories();
}

void coreDependecies() {
  getIt.registerSingleton<ApiConsumer>(DioConsumer(dio: getIt()));
}

Future<void> externalDependecies() async {
  getIt.registerSingleton<SharedPreferences>(sharedPreferences);
  getIt.registerSingleton<Dio>(Dio());
}

void sources() {
  getIt.registerSingleton<ProductsSource>(ProductsSourceImpl());
}

void repositories() {
  getIt.registerSingleton<ProductsRepo>(ProductsRepoImpl(source: getIt()));
}
