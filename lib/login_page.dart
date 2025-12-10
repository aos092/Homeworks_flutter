import 'package:flutter/material.dart';
//import 'package:storeapp/SharedPreferences.dart';
import 'SharedPreferences.dart';
import 'home_page.dart';
//import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>
    with SingleTickerProviderStateMixin {
  final _nameCtrl = TextEditingController();
  late AnimationController _anim;
  late Animation<double> fade;

  @override
  void initState() {
    super.initState();
    _anim = AnimationController(vsync: this, duration: Duration(seconds: 2));
    fade = CurvedAnimation(parent: _anim, curve: Curves.easeIn);
    _anim.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FadeTransition(
        opacity: fade,
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("🏋️   متجر المعدات الرياضية",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
              SizedBox(height: 40),
              TextField(
                controller: _nameCtrl,
                decoration: InputDecoration(
                    labelText: "اسم المستخدم",
                    border: OutlineInputBorder()),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                  onPressed: () async {
                    await MyPrefs.saveUser(_nameCtrl.text.trim());
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (_) => HomePage()),
                    );
                  },
                  child: Text("تسجيل دخول"))
            ],
          ),
        ),
      ),
    );
  }
}
