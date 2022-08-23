import 'package:coffeeshopui/utils/constants.dart';
import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final String iconImagePath;
  final String title;
  final bool isActive;

  const CategoryItem({
    Key? key,
    required this.iconImagePath,
    required this.title,
    this.isActive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 120,
      margin: const EdgeInsets.only(right: 20),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: isActive ? COLOR_SELECTED : Colors.grey.shade200,
        borderRadius: const BorderRadius.all(
          Radius.circular(50),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(iconImagePath),
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
