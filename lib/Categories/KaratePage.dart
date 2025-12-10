import 'package:flutter/material.dart';

class KaratePage extends StatelessWidget {
  const KaratePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> karateItems = [
      {"name": "بدلة كاراتيه", "img": "images/karate-gi-.png", "price": 50},
      {"name": "حزام", "img": "images/belt .png", "price": 15},
      {"name": "قفازات قتال", "img": "images/gloves-.png", "price": 25},
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text("معدات الكاراتيه"),
        backgroundColor: Colors.red,
      ),
      body: ListView.builder(
        itemCount: karateItems.length,
        itemBuilder: (context, index) {
          var item = karateItems[index];
          return ListTile(
            leading: Image.asset(item["img"], width: 50),
            title: Text(item["name"]),
            subtitle: Text("السعر: \$${item['price']}"),
            trailing: IconButton(
              icon: Icon(Icons.add_shopping_cart, color: Colors.red),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("${item['name']}  تمت إضافتها للسلة")),
                );

              },
            ),
          );
        },
      ),
    );
  }
}
