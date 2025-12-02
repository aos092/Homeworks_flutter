import 'package:flutter/material.dart';
import 'Homepage.dart';
import 'Searchpage.dart';
import 'Settingpage.dart';
import 'Accountpage.dart';

class Indexpage extends StatefulWidget {
  const Indexpage({super.key});

  @override
  State<Indexpage> createState() => _IndexpageState();
}

class _IndexpageState extends State<Indexpage> {
  int _current = 0;

  List<Widget> pages = [
    Homepage(),
    Searchpage(),
    Settingpage(),
    Accountpage(),
  ];

  String getTitle() {
    switch (_current) {
      case 0:
        return "الصفحة الرئيسية";
      case 1:
        return "صفحة البحث";
      case 2:
        return "صفحة الإعدادات";
      case 3:
        return "صفحة الحساب";
      default:
        return "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(getTitle()),
        backgroundColor: Colors.blueGrey,
      ),

      body: IndexedStack(
        index: _current,
        children: pages,
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _current,
        selectedItemColor: Colors.blue[800],
        unselectedItemColor: Colors.grey,
        onTap: (i) {
          setState(() {
            _current = i;
          });
        },
        items: const [
          BottomNavigationBarItem(label: "الرئيسية", icon: Icon(Icons.home)),
          BottomNavigationBarItem(label: "البحث", icon: Icon(Icons.search)),
          BottomNavigationBarItem(label: "الإعدادات", icon: Icon(Icons.settings)),
          BottomNavigationBarItem(label: "الحساب", icon: Icon(Icons.account_box)),
        ],
      ),
    );
  }
}
