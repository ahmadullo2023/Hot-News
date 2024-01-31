import 'dart:convert';
import 'package:http/http.dart' as http;
import '../comfig/comfig.dart';


class ApiService {
  static Future<List<dynamic>> fetchNewsData() async {
    final response = await http.get(Uri.parse(AppConfig.baseUrl + AppConfig.apiKey));
    if (response.statusCode == 200) {
      final Map<String, dynamic> data = json.decode(response.body);
      final List<dynamic> articles = data['articles'];
      return articles;
    } else {
      throw Exception('Failed to load news');
    }
  }
}