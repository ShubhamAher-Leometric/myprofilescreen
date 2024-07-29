import 'package:shared_preferences/shared_preferences.dart';

// Function to save user role as boolean to SharedPreferences
Future<void> saveUserRole(bool isUser) async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  await prefs.setBool('userRole', isUser);
  print('Logging You As : ' + (isUser ? 'User' : 'Not User'));
}


// Function to retrieve user role as boolean from SharedPreferences
Future<bool?> getUserRole() async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  bool? role = prefs.getBool('userRole');
  return role;
}
