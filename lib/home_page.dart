import 'package:flutter/material.dart';
import 'Categories/Basketball.dart';
import 'Categories/Bodybuilding.dart';
import 'Categories/Football.dart';
import 'Categories/KaratePage.dart';
import 'Categories/Running.dart';
import 'Categories/swimming_page.dart';




class HomePage extends StatelessWidget {
  HomePage({super.key});

  // قائمة الرياضات (اسم + صورة + الصفحة)
  final List<Map<String, dynamic>> sports = [
    {
      "name": "السباحة",
      "image": "images/vecteezy_swimmer-excercise-on-indoor-swimming-poo_11638063.jpg",
      "page": SwimmingPage(),
    },
    {
      "name": "كرة القدم",
      "image": "images/child-613199_1280.jpg",
      "page": FootballPage(),
    },
    {
      "name": "كرة السلة",
      "image": "images/bask.png",
      "page": BasketballPage(),
    },
    {
      "name": "الكرتيل",
      "image": "images/karate-gi-.png",
      "page": KaratePage(),
    },
    {
      "name": " الجري",
      "image": "images/-running-0.png",
      "page": RunningPage(),
    },
    {
      "name": "معدات كمال الأجسام ",
      "image": "images/Bodybuilding.png",
      "page": BodybuildingPage(),
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("متجر المعدات الرياضية"),
        backgroundColor: Colors.blueGrey,
      ),

      body: GridView.builder(
        padding: EdgeInsets.all(16),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,            // عدد الأعمدة
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          childAspectRatio: 0.8,
        ),
        itemCount: sports.length,
        itemBuilder: (context, index) {
          final sport = sports[index];

          return GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => sport['page']));
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                image: DecorationImage(
                  image: AssetImage(sport["image"]),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.3), BlendMode.darken),
                ),
              ),
              child: Center(
                child: Text(
                  sport["name"],
                  style: TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
