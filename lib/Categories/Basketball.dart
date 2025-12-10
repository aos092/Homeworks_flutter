import 'package:flutter/material.dart';

class BasketballPage extends StatelessWidget {
  final List<Map<String, dynamic>> items = [
    {"name": "كرة سلة", "price": 25.0, "image": "images/1bas.png"},
    {"name": "شبكة طوق سلة", "price": 15.0, "image": "images/2bas.png"},
    {"name": "حذاء كرة السلة ", "price": 60.0, "image": "images/4bas.png"},
    {"name": "لباس لاعب سلة", "price": 35.0, "image": "images/3bas.png"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("معدات كرة السلة"),
        backgroundColor: Colors.orange,
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(12),
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];


          return Card(
            elevation: 4,
            margin: EdgeInsets.symmetric(vertical: 10),
            child: ListTile(
              leading: Image.asset(item["image"], width: 60, fit: BoxFit.cover),
              title: Text(item["name"]),
              subtitle: Text("السعر: \$${item["price"]}"),
              trailing: IconButton(
                icon: Icon(Icons.add_shopping_cart, color: Colors.orange),
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("${item['name']} تمت إضافتها للسلة")),
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
