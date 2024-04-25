import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scrap_app/core/constants/colors.dart';
import 'package:scrap_app/presentation/bloc/cubit/products_cubit.dart';
import 'package:scrap_app/presentation/widget/products/product_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.65,
              child: BlocBuilder<ProductsCubit, ProductsState>(
                builder: (context, state) {
                  return state.when(
                    loading: () =>
                        const Center(child: CircularProgressIndicator()),
                    success: (products) {
                      return ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: products.data!.length,
                          itemBuilder: (context, index) {
                            final product = products.data![index];
                            return ProductCard(
                                image:
                                    "https://masafaapp.com/api/images/Product/17055201911711977278.jpeg",
                                label: product.name ?? "null",
                                itemName: product.price ?? 'null',
                                description:
                                    " product.description ?? 'nullllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllll'",
                                quantity: product.quantity ?? 'null',
                                number: product.id.toString(),
                                color: red);
                          });
                    },
                  );
                },
              ),
            ),
            const Text('wwwwwwwwwwww')
          ],
        ),
      ),
    );
  }
}
