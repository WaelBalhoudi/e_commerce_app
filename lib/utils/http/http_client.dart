import 'dart:convert';
import 'package:http/http.dart' as http;

class HttpHelper {
  static const String baseUrl = 'https://your-api-base-url.com/'; // Replace with your API base URL

  /// Helper method to make a GET request
  static Future<Map<String, dynamic>> getMap(String endpoint) async {
    final response = await http.get(Uri.parse('$baseUrl/$endpoint'));
    return handleResponse(response);
  }

  /// Helper method to make a POST request
  static Future<Map<String, dynamic>> post(String endpoint, dynamic data) async {
    final url = Uri.parse('$baseUrl/$endpoint');
    final headers = {'Content-Type': 'application/json'};
    final body = json.encode(data);
    final response = await http.post(url, headers: headers, body: body);
    return handleResponse(response);
  }

  /// Helper method to make a PUT request
  static Future<Map<String, dynamic>> put(String endpoint, dynamic data) async {
    final url = Uri.parse('$baseUrl/$endpoint');
    final headers = {'Content-Type': 'application/json'};
    final body = json.encode(data);
    final response = await http.put(url, headers: headers, body: body);
    return handleResponse(response);
  }

  /// Helper method to make a DELETE request
  static Future<Map<String, dynamic>> delete(String endpoint) async {
    final response = await http.delete(Uri.parse('$baseUrl/$endpoint'));
    return handleResponse(response);
  }

  /// Handle the HTTP response
  static Map<String, dynamic> handleResponse(http.Response response) {
    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  }
}