import 'package:coffee_app/util/coffee_tile.dart';
import 'package:flutter/material.dart';

final List<CoffeeTile> coffee = [
  const CoffeeTile(
   image: 'lib/images/phil-desforges-Nw8wbiDE3gU-unsplash.jpg', 
   coffeetype: 'Cupaccino', 
   description: 'With Almond Milk', 
   price: 4.20, 
   icon: Icons.add
  ),
  const CoffeeTile(
   image: 'lib/images/brigitte-tohm-yRH0JI2S2KA-unsplash.jpg', 
   coffeetype: 'Latte', 
   description: 'Best With Honey', 
   price: 5.02, 
   icon: Icons.add
  ),
  const CoffeeTile(
   image: 'lib/images/ibrahim-rifath-oKq_2v6pr4A-unsplash.jpg', 
   coffeetype: 'Milky', 
   description: 'Natural', 
   price: 4.00, 
   icon: Icons.add
  )
];