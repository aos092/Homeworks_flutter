import 'package:flutter/material.dart';

class SwimmingPage extends StatelessWidget {
  const SwimmingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(" "
            "معدات السباحة"),
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Image.asset("assets/swimming/goggles.jpg"),
            title: Text("نظارات سباحة"),
            subtitle: Text("نظارات مضادة للضباب"),
            trailing: IconButton(
              icon: Icon(Icons.add_shopping_cart, color: Colors.blue),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("تمت إضافة نظارات السباحة إلى السلة")),
                );
              },
            ),
          ),
          ListTile(
            leading: Image.asset("assets/swimming/fins.jpg"),
            title: Text("زعانف سباحة"),
            subtitle: Text("مناسبة للتدريب"),
            trailing: IconButton(
              icon: Icon(Icons.add_shopping_cart, color: Colors.blue),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("تمت إضافة الزعانف إلى السلة")),
                );
              },
            ),
          ),
          ListTile(
            leading: Image.asset("assets/swimming/swimsuit.jpg"),
            title: Text("ملابس سباحة"),
            subtitle: Text("خامة ممتازة"),
            trailing: IconButton(
              icon: Icon(Icons.add_shopping_cart, color: Colors.blue),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("تمت إضافة ملابس السباحة إلى السلة")),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
