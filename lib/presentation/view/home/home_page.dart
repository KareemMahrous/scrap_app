import 'package:flutter/material.dart';
import 'package:scrap_app/presentation/widget/products/product_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: 800,
        child: ListView.builder(
            itemCount: 2,
            itemBuilder: (context, index) {
              return const ProductCard(
                  label: 'label',
                  itemName: 'itemName',
                  description: 'description',
                  quantity: 'طن',
                  number: '1',
                  color: Colors.red);
            }),
      ),
    );
  }
}
