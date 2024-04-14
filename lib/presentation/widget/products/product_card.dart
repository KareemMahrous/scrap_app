import 'package:flutter/material.dart';
import 'package:scrap_app/core/extensions/text_styles.dart';

class ProductCard extends StatelessWidget {
  const ProductCard(
      {super.key,
      required this.label,
      required this.itemName,
      required this.description,
      required this.quantity,
      required this.number,
      required this.color});
  final String label;
  final String itemName;
  final String description;
  final String quantity;
  final String number;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.sizeOf(context).height * 0.70,
        width: MediaQuery.sizeOf(context).width * 0.50,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
        child: Column(
          children: [
            Stack(
              children: [
                Image.network(
                    "https://masafaapp.com/api/images/Product/17055201911711977278.jpeg"),
                Container(
                  decoration: BoxDecoration(
                    color: color,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Text(label,
                      style: context.titleMedium.copyWith(color: Colors.white)),
                )
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            Container(
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: Colors.green[200]),
              child: Text(
                itemName,
                style: context.bodyMedium.copyWith(color: Colors.green),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              description,
              style: context.bodyLarge.copyWith(color: Colors.black),
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Icon(Icons.square_rounded),
                    Text(
                      number,
                      style: context.bodySmall,
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    const Icon(Icons.circle),
                    Text(
                      quantity,
                      style: context.bodySmall,
                    ),
                  ],
                ),
                const Icon(Icons.heart_broken),
              ],
            ),
            const Divider(
              color: Colors.grey,
              height: 1,
            ),
            const DrawerButton()
          ],
        ),
      ),
    );
  }
}
