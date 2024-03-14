import 'dart:convert';

import 'package:http/http.dart' as http;

class AppHttpClient {
  static const String _baseURL = 'https://your-api-base-url.com';

  // Helper method for make a GET request
  static Future<Map<String, dynamic>> get(String endPoint) async {
    final response = await http.get(Uri.parse('$_baseURL/$endPoint'));
    return _headleRespone(response);
  }

  // Helper method for make a POST request
  static Future<Map<String, dynamic>> post(
      String endPoint, dynamic data) async {
    final response = await http.post(
      Uri.parse('$_baseURL/$endPoint'),
      headers: {'Content-Type': 'application/json'},
      body: json.encode(data),
    );
    return _headleRespone(response);
  }

  // Helper method for make a POST request
  static Future<Map<String, dynamic>> put(String endPoint, dynamic data) async {
    final response = await http.put(
      Uri.parse('$_baseURL/$endPoint'),
      headers: {'Content-Type': 'application/json'},
      body: json.encode(data),
    );
    return _headleRespone(response);
  }

  // Helper method for make a DELETE request
  static Future<Map<String, dynamic>> delete(String endPoint) async {
    final response = await http.delete(Uri.parse('$_baseURL/$endPoint'));
    return _headleRespone(response);
  }

  // Headle the http request
  static Map<String, dynamic> _headleRespone(http.Response response) {
    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  }
}
