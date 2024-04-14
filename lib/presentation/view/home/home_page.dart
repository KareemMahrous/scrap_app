import 'package:flutter/material.dart';
import 'package:scrap_app/core/constants/colors.dart';
import 'package:scrap_app/presentation/widget/products/product_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 2,
          itemBuilder: (context, index) {
            return const ProductCard(
                label: "",
                itemName: "",
                description: "",
                quantity: "",
                number: "",
                color: red);
          }),
    );
  }
}
