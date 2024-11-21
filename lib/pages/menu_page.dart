import 'package:flutter/material.dart';
import 'menu_detail_page.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    final menuItems = [
      {
        'title': 'Coffee',
        'details': ['Espresso', 'Cappuccino', 'Latte'],
        'color': Colors.brown[200],
      },
      {
        'title': 'Tea',
        'details': ['Green Tea', 'Black Tea', 'Herbal Tea'],
        'color': Colors.green[200],
      },
      {
        'title': 'Juice',
        'details': ['Orange Juice', 'Apple Juice', 'Mango Juice'],
        'color': Colors.orange[200],
      },
      {
        'title': 'Snacks',
        'details': ['Chips', 'Nachos', 'Fries'],
        'color': Colors.yellow[200],
      },
      {
        'title': 'Desserts',
        'details': ['Cake', 'Ice Cream', 'Brownies'],
        'color': Colors.pink[200],
      },
    ];

    return GridView.builder(
      padding: const EdgeInsets.all(16.0),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemCount: menuItems.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => MenuDetailPage(
                  title: menuItems[index]['title'] as String,
                  details: menuItems[index]['details'] as List<String>,
                ),
              ),
            );
          },
          child: Card(
            color: menuItems[index]['color'] as Color?,
            elevation: 3,
            child: Center(
              child: Text(
                menuItems[index]['title'] as String,
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        );
      },
    );
  }
}
