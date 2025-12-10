import 'package:flutter/material.dart';
import 'models/product.dart';
import 'cart_page.dart';

class ProductDetails extends StatelessWidget {
  final Product product;
  const ProductDetails({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product.name),
        backgroundColor: Colors.green,
      ),

      body: Column(
        children: [
          Image.asset(product.image, height: 250),
          SizedBox(height: 20),

          Text(product.name, style: TextStyle(fontSize: 24)),
          SizedBox(height: 10),

          Text(product.description,
              style: TextStyle(fontSize: 16, color: Colors.grey[700])),

          SizedBox(height: 20),

          Text("\$${product.price}",
              style: TextStyle(
                  fontSize: 28, color: Colors.green, fontWeight: FontWeight.bold)
          ),

          Spacer(),

          ElevatedButton(
            onPressed: () {
              CartPage.cart.add(product);

              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text("تم إضافة المنتج إلى السلة")),
              );
            },

            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green, minimumSize: Size(200, 50)),
            child: Text("إضافة إلى السلة "),
          ),

          SizedBox(height: 20)

        ],
      ),
    );
  }
}
