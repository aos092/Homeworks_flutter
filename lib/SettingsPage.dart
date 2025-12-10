import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(" الإعدادات"),
        backgroundColor: Colors.green,

      ),

      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.language),
            title: Text("اللغة"),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
            leading: Icon(Icons.dark_mode),
            title: Text("الوضع الليلي"),
            trailing: Icon(Icons.toggle_on),
          ),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text("الإشعارات"),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
            leading: Icon(Icons.info),
            title: Text("عن التطبيق"),
          ),
        ],
      ),
    );
  }
}
