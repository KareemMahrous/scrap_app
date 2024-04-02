import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'core/network/api_consumer.dart';
import 'core/network/dio_consumer.dart';

final GetIt getIt = GetIt.instance;

SharedPreferences sharedPreferences = getIt<SharedPreferences>();
Future<void> getItInit() async {
  sharedPreferences = await SharedPreferences.getInstance();
  coreDependecies();
  externalDependecies();
}

void coreDependecies() {
  getIt.registerSingleton<ApiConsumer>(DioConsumer(dio: getIt()));
}

Future<void> externalDependecies() async {
  getIt.registerSingleton<SharedPreferences>(sharedPreferences);
  getIt.registerSingleton<Dio>(Dio());
}
