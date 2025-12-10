import 'package:flutter/material.dart';
import 'models/product.dart';

class CartPage extends StatefulWidget {
  static List<Product> cart = [];

  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(" سلة المشتريات"),
        backgroundColor: Colors.green,
      ),

      body: CartPage.cart.isEmpty
          ? Center(child: Text(" السلة فارغة"))
          : ListView.builder(
          itemCount: CartPage.cart.length,
          itemBuilder: (context, index) {
            final item = CartPage.cart[index];

            return ListTile(
              leading: Image.asset(item.image),
              title: Text(item.name),
              subtitle: Text("\$${item.price}"),

              trailing: IconButton(
                icon: Icon(Icons.delete, color: Colors.red),
                onPressed: () {
                  setState(() {
                    CartPage.cart.removeAt(index);
                  });
                },
              ),
            );
          }),
    );
  }
}
