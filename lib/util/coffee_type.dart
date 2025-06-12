import 'package:flutter/material.dart';

class CoffeeType extends StatelessWidget {
  final String type;
  final bool isSelected;
  final VoidCallback onTap;
  const CoffeeType(
      {super.key,
      required this.type,
      required this.isSelected,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30.0),
      child: GestureDetector(
        onTap: onTap,
        child: Text(type,
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: isSelected
                    ? Theme.of(context).colorScheme.primary
                    : Theme.of(context).colorScheme.inverseSurface)),
      ),
    );
  }
}
