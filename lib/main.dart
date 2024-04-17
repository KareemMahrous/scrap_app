import 'package:bloc/bloc.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'bloc_observer.dart';
import 'dependency_injection.dart';
import 'scrap_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await getItInit();
  Bloc.observer = MyBlocObserver();
  // ProductsRepo repo = ProductsRepoImpl(source: getIt());
  // final response = await repo.getProducts();

  // log(response.fold((l) => l.message, (r) => r.data!.first.logo).toString());
  runApp(DevicePreview(
    enabled: !kReleaseMode,
    builder: (context) => const ScrapApp(),
  ));
}
