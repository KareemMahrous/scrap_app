import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scrap_app/dependency_injection.dart';
import 'package:scrap_app/presentation/bloc/cubit/products_cubit.dart';
import 'package:scrap_app/presentation/view/home/home_page.dart';

class ScrapApp extends StatelessWidget {
  const ScrapApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ProductsCubit(repo: getIt())..fetchProducts(),
        ),
        // BlocProvider(
        //   create: (context) => SubjectBloc(),
        // ),
      ],
      child: const MaterialApp(
        home: HomePage(),
        // home: Scaffold(
        //   body: Center(
        //     child: Text('Hello World!'),
        //   ),
        // ),
      ),
    );
  }
}
