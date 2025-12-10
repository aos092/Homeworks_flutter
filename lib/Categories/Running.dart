import 'package:flutter/material.dart';

class RunningPage extends StatelessWidget {
  const RunningPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> runningItems = [
      {"name": "حذاء جري", "img": "assets/running/shoes.jpg", "price": 80},
      {"name": "ساعة رياضية", "img": "assets/running/watch.jpg", "price": 120},
      {"name": "ملابس رياضية", "img": "assets/running/clothes.jpg", "price": 35},
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text("معدات الجري"),
        backgroundColor: Colors.orange,
      ),
      body: ListView.builder(
        itemCount: runningItems.length,
        itemBuilder: (context, index) {
          var item = runningItems[index];
          return ListTile(
            leading: Image.asset(item["img"], width: 50),
            title: Text(item["name"]),
            subtitle: Text("السعر: \$${item['price']}"),
            trailing: IconButton(
              icon: Icon(Icons.add_shopping_cart, color: Colors.orange),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("${item['name']} تمت "
                      " إضافته للسلة")),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
