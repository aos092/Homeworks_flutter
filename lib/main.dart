import 'package:flutter/material.dart';
import 'SettingsPage.dart';
import 'login_page.dart';
import 'home_page.dart';
import 'cart_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int index = 0;

  final pages = [
    HomePage(),
    CartPage(),
    LoginPage(),
    SettingsPage()
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(
        body: pages[index],

        bottomNavigationBar: BottomNavigationBar(
          currentIndex: index,
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.grey,


          onTap: (value) {
            setState(() {
              index = value;
            });
          },

          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "الرئيسية"),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: "السلة"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "الحساب "),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: "الإعدادات"),
          ],
        ),
      ),
    );
  }
}
