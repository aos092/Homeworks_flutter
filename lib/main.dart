import 'package:flutter/material.dart';

void main() {
  runApp(ProfileApp());
}

class ProfileApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        scaffoldBackgroundColor: Colors.grey[100],
      ),
      home: CVPage(),
    );
  }
}

class CVPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CV - Abdullah Subih'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(12),
        child: Column(
          children: [
            //
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.deepOrange,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('pics/profileimg.png'),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Abdullah Subih',
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Application Developer',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white70,
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.email, color: Colors.white),
                      SizedBox(width: 8),
                      Text(
                        'aosubih@gmail.com',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.phone, color: Colors.white),
                      SizedBox(width: 8),
                      Text(
                        '+967 772627092',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            SizedBox(height: 16),

            // المؤهلات
            CVSection(
              title: 'المؤهلات العلمية والعملية',
              items: [
                CVItem(Icons.school,
                    'بكالوريوس علوم حاسوب - جامعة سيئون (2025)'),
                CVItem(Icons.work,
                    'مدير نادي طلاب جامعيين بحافة بلفقيه'),
                CVItem(Icons.code, 'خبرة في تصميم الشخصيات'),
              ],
            ),

            // المهارات
            CVSection(
              title: 'المهارات',
              items: [
                CVItem(Icons.check_circle, 'تطوير مواقع ويب'),
                CVItem(Icons.check_circle, 'تصميم الجرافيك'),
                CVItem(Icons.check_circle, 'تصميم واجهات المستخدم UI/UX'),
                CVItem(Icons.check_circle, 'العمل الجماعي وحل المشكلات'),
              ],
            ),

            // اللغات
            CVSection(
              title: 'اللغات',
              items: [
                CVItem(Icons.language, 'العربية - اللغة الأم'),
                CVItem(Icons.language, 'الإنجليزية - مستوى جيد جدًا'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CVSection extends StatelessWidget {
  final String title;
  final List<CVItem> items;

  CVSection({required this.title, required this.items});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      elevation: 3,
      margin: EdgeInsets.symmetric(vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.deepOrange,
              ),
            ),
            SizedBox(height: 10),
            ...items.map((item) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 4.0),
              child: Row(
                children: [
                  Icon(item.icon, color: Colors.deepOrange),
                  SizedBox(width: 10),
                  Expanded(
                    child: Text(
                      item.text,
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}

class CVItem {
  final IconData icon;
  final String text;

  CVItem(this.icon, this.text);
}
