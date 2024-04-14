import 'package:flutter/material.dart';
import 'package:scrap_app/core/constants/colors.dart';
import 'package:scrap_app/core/extensions/text_styles.dart';
import 'package:scrap_app/presentation/widget/common/buttons/buttons.dart';

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
    return Container(
      height: MediaQuery.of(context).size.height * 0.70,
      width: MediaQuery.of(context).size.width * 0.50,
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        //  mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Stack(children: [
            Image.network(
                height: MediaQuery.sizeOf(context).height * 0.35,
                // width: MediaQuery.sizeOf(context).width * 0.35,
                "https://masafaapp.com/api/images/Product/17055201911711977278.jpeg"),
            Container(
              alignment: Alignment.topCenter,
              width: MediaQuery.sizeOf(context).width * 0.40,
              padding: const EdgeInsets.all(6),
              margin: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Text(label,
                  overflow: TextOverflow.ellipsis,
                  style: context.titleMedium.copyWith(color: Colors.white)),
            ),
          ]),
          const SizedBox(
            height: 8,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 8),
            margin: const EdgeInsets.all(4),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15), color: lightGreen),
            child: Text(
              overflow: TextOverflow.ellipsis,
              itemName,
              style: context.bodyMedium.copyWith(color: green),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            description,
            style: context.bodyLarge.copyWith(color: black),
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const Icon(Icons.crop_square),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    number,
                    style: context.bodySmall,
                  ),
                  const Icon(Icons.circle_outlined),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    quantity,
                    style: context.bodySmall,
                  ),
                ],
              ),
              const Icon(Icons.heart_broken),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Divider(
            color: Colors.grey,
            height: 1,
          ),
          const SizedBox(
            height: 10,
          ),
          DefaultButton(
              radius: 12,
              width: MediaQuery.sizeOf(context).width * 0.35,
              height: MediaQuery.sizeOf(context).height * 0.06,
              onPressed: () {},
              text: 'see details',
              buttonColor: Colors.green[200])
        ],
      ),
    );
  }
}
