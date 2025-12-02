import 'package:flutter/material.dart';

class Searchpage extends StatelessWidget {
  const Searchpage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> items = [
      "العنصر الأول",
      "العنصر الثاني",
      "العنصر الثالث",
      "العنصر الرابع",
    ];

    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, i) {
        return ListTile(
          title: Text(items[i]),
          leading: Icon(Icons.list, color: Colors.blue),
        );
      },
    );
  }
}
