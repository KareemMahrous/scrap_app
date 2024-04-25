import 'package:flutter/material.dart';
import 'package:scrap_app/core/constants/colors.dart';
import 'package:scrap_app/presentation/widget/common/buttons/buttons.dart';

class ProductCard extends StatelessWidget {
  const ProductCard(
      {super.key,
      required this.label,
      required this.itemName,
      required this.description,
      required this.quantity,
      required this.number,
      required this.color,
      required this.image});
  final String label;
  final String itemName;
  final String description;
  final String quantity;
  final String number;
  final String image;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 0.60,
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.black12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.35,
                width: MediaQuery.of(context).size.width,
                child: Image.network(
                  image,
                  fit: BoxFit
                      .fill, // Adjust the fit property according to your requirement
                ),
              ),
              Container(
                alignment: Alignment.topCenter,
                width: MediaQuery.of(context).size.width * 0.40,
                padding: const EdgeInsets.all(6),
                margin: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Text(
                  label,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(color: Colors.white),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: lightGreen,
                  ),
                  child: Text(
                    itemName,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(color: green),
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  description,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.titleMedium!,
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Icon(Icons.crop_square),
                        const SizedBox(height: 4),
                        Text(
                          number,
                          style: Theme.of(context).textTheme.titleSmall!,
                        ),
                        const Icon(Icons.circle_outlined),
                        const SizedBox(height: 4),
                        Text(
                          quantity,
                          style: Theme.of(context).textTheme.titleSmall!,
                        ),
                      ],
                    ),
                    const Icon(Icons.heart_broken),
                  ],
                ),
                const SizedBox(height: 10),
                const Divider(color: grey, height: 1),
                const SizedBox(height: 16),
                DefaultButton(
                  radius: 12,
                  width: MediaQuery.of(context).size.width * 0.35,
                  height: MediaQuery.of(context).size.height * 0.06,
                  onPressed: () {},
                  text: 'see details',
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(color: white),
                  textColor: white,
                  buttonColor: green,
                ),
                const SizedBox(height: 8),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
