import 'package:flutter/material.dart';

class MenuDetailPage extends StatelessWidget {
  final String title;
  final List<String> details;

  const MenuDetailPage({super.key, required this.title, required this.details});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$title Details'),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: details.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 8.0),
            child: ListTile(
              leading: const Icon(Icons.fastfood),
              title: Text(details[index]),
            ),
          );
        },
      ),
    );
  }
}
