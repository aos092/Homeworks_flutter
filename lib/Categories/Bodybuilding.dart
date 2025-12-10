import 'package:flutter/material.dart';

class BodybuildingPage extends StatelessWidget {
  final List<Map<String, dynamic>> items = [
    {"name": "دمبل حديد", "price": 40.0, "image": "assets/bodybuilding/bb1.jpg"},
    {"name": "حبل مقاومة", "price": 12.0, "image": "images/body2.png"},
    {"name": "قفازات جيم", "price": 15.0, "image": "images/body3.png"},
    {"name": "حزام رفع أثقال", "price": 22.0, "image": "assets/bodybuilding/bb4.jpg"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("معدات كمال الأجسام"),
        backgroundColor: Colors.redAccent,
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
                icon: Icon(Icons.add_shopping_cart, color: Colors.redAccent),
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(

                    SnackBar(content: Text("${item['name']} تمت إضافتها  للسلة")),
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
