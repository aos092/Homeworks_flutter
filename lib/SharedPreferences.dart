import 'package:shared_preferences/shared_preferences.dart';

class MyPrefs {
  static Future<void> saveUser(String name) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('user', name);
  }

  static Future<String?> getUser() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString('user ');

  }

  static Future<void> logout() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.remove('user');
  }

  static Future<void> saveCart(List<String> cart) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setStringList("cart", cart);
  }

  static Future<List<String>> getCart() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getStringList("cart") ?? [];
  }
}
