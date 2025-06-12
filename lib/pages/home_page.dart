import 'package:coffee_app/components/coffee.dart';
import 'package:coffee_app/util/coffee_tile.dart';
import 'package:coffee_app/util/coffee_type.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // user tapped on coffee type
  void coffeeTypeSelected(int index) {
    setState(() {
      for (int i = 0; i < coffeeType.length; i++) {
        coffeeType[i][1] = false;
      }
      coffeeType[index][1] = true;
    });
  }

  TextEditingController textEditingController = TextEditingController();

// list of coffee types
  final List coffeeType = [
    ['Cupaccino', true],
    ['Latte', false],
    ['Milk coffee', false],
    ['Tea', false]
  ];

  final border = OutlineInputBorder(
      borderSide: const BorderSide(
          width: 1, color: Colors.transparent, style: BorderStyle.solid),
      borderRadius: BorderRadius.circular(12));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        //  user account icon
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 25.0),
            child: Card(
              elevation: 10,
              color: Colors.black,
              child: Padding(
                padding: const EdgeInsets.all(3.0),
                child: Icon(
                  Icons.person_4_outlined,
                  size: 25,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue,
        iconSize: 38,
        selectedItemColor: Theme.of(context).colorScheme.primary,
        unselectedItemColor: Colors.grey.shade500,
        // selectedFontSize: 0,
        // unselectedFontSize: 0,
        items: [
          BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.home_outlined,
                ),
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.shopping_bag,
                ),
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.favorite,
                ),
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.notifications,
                ),
              ),
              label: ''),
        ],
      ),
      drawer: const Drawer(),
      body: Column(
        children: [
          // find the best coffee for you
          Padding(
            padding: const EdgeInsets.only(
                top: 10.0, left: 20, right: 20, bottom: 20),
            child: Column(
              children: [
                Text(
                  'Find the best \ncoffee for you',
                  style: GoogleFonts.bebasNeue(
                      color: Theme.of(context).colorScheme.inverseSurface,
                      fontWeight: FontWeight.bold,
                      fontSize: 35),
                ),

                const SizedBox(height: 5),

                // search field
                TextField(
                  controller: TextEditingController(),
                  decoration: InputDecoration(
                    hintText: 'Find your coffee',
                    hintStyle: TextStyle(color: Colors.grey[400], fontSize: 15),
                    prefixIcon: const Icon(
                      Icons.search_outlined,
                      size: 20,
                    ),
                    prefixIconColor: Theme.of(context).colorScheme.primary,
                    border: border,
                    enabledBorder: border,
                    focusedBorder: border,
                    fillColor: const Color.fromARGB(255, 54, 53, 53),
                    filled: true,
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 5),

          // horizontal listview of coffee types
          SizedBox(
            height: 50,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: coffeeType.length,
              itemBuilder: (context, index) {
                return CoffeeType(
                  type: coffeeType[index][0],
                  isSelected: coffeeType[index][1],
                  onTap: () {
                    coffeeTypeSelected(index);
                  },
                );
              },
            ),
          ),

          const SizedBox(height: 5),

          // horizontal listview of coffee tiles
          Expanded(
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: coffee.length,
                itemBuilder: (context, index) {
                  final coffees = coffee[index];
                  return CoffeeTile(
                      image: coffees.image,
                      coffeetype: coffees.coffeetype,
                      description: coffees.description,
                      price: coffees.price,
                      icon: coffees.icon);
                }),
          ),
        ],
      ),
    );
  }
}
