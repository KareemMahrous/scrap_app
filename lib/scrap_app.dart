import 'package:flutter/material.dart';
import 'package:scrap_app/presentation/view/home/home_page.dart';

class ScrapApp extends StatelessWidget {
  const ScrapApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
      // home: Scaffold(
      //   body: Center(
      //     child: Text('Hello World!'),
      //   ),
      // ),
    );
  }
}
