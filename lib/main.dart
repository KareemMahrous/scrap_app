import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

import 'bloc_observer.dart';
import 'dependency_injection.dart';
import 'scrap_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await getItInit();
  Bloc.observer = MyBlocObserver();
  runApp(const MainApp());
}
