import 'package:flutter/material.dart';

class FootballPage extends StatelessWidget {
  const FootballPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("معدات كرة القدم"),
        backgroundColor: Colors.green,
      ),
      body: ListView(

        children: [
          ListTile(
            leading: Image.asset("assets/football/ball.jpg"),
            title: Text("كرة قدم"),
            trailing: IconButton(
              icon: Icon(Icons.add_shopping_cart, color: Colors.green),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("تمت إضافة الكرة للسلة")),
                );
              },
            ),
          ),
          ListTile(
            leading: Image.asset("assets/football/gloves.jpg"),
            title: Text("قفازات حارس"),
            trailing: IconButton(
              icon: Icon(Icons.add_shopping_cart, color: Colors.green),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("تمت إضافة القفازات للسلة")),
                );
              },
            ),
          ),
          ListTile(
            leading: Image.asset("assets/football/shoes.jpg"),
            title: Text("حذاء كرة القدم"),
            trailing: IconButton(
              icon: Icon(Icons.add_shopping_cart, color: Colors.green),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("تمت  إضافة الحذاء للسلة")),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
