import 'dart:convert';
import 'package:http/http.dart' as http;
import '../../services/storage_services.dart';

class AuthController {
  final String baseUrl = "https://dummyjson.com/auth/login";

  Future<bool> login(String email, String password) async {
    final response = await http.post(
      Uri.parse('$baseUrl/login'),
      headers: {"Content-Type": "application/json"},
      body: jsonEncode({
        "email": email,
        "password": password,
      }),
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      await StorageService().saveToken(data['token']);
      return true;
    } else {
      return false;
    }
  }

  Future<bool> signup(String email, String password) async {
    final response = await http.post(
      Uri.parse('$baseUrl/register'),
      headers: {"Content-Type": "application/json"},
      body: jsonEncode({
        "email": email,
        "password": password,
      }),
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      await StorageService().saveToken(data['token']);
      return true;
    } else {
      return false;
    }
  }
}
