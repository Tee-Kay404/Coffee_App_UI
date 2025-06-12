import 'package:flutter/material.dart';

class CoffeeTile extends StatelessWidget {
  final String image;
  final String coffeetype;
  final String description;
  final double price;
  final IconData icon;
  const CoffeeTile(
      {super.key,
      required this.image,
      required this.coffeetype,
      required this.description,
      required this.price,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0),
      child: Container(
        width: 250,
        height: 280,
        decoration: BoxDecoration(
          color: Colors.black,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset(
                        image,
                        height: 180,
                        width: 225,
                      )),
                  Text(
                    coffeetype,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    description,
                    style: TextStyle(
                        color: Colors.grey.shade300,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '\$${price.toString()} ',
                    style: const TextStyle(fontSize: 24, color: Colors.white),
                  ),
                  FloatingActionButton(
                    mini: true,
                    backgroundColor: Theme.of(context).colorScheme.primary,
                    onPressed: () {},
                    child: Icon(icon),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
