import 'dart:convert';
import 'package:http/http.dart' as http;

class GeminiService {
  static const String _apiKey = 'AIzaSyDObse-ojgBw_y8OyBapYVwMUYBPyPe4D0';
  static const String _apiUrl = 'https://generativelanguage.googleapis.com/v1beta/models/gemini-pro:generateContent?key=';

  static Future<String> getResponse(String userMessage) async {
    try {
      final uri = Uri.parse('$_apiUrl$_apiKey');

      final response = await http.post(
        uri,
        headers: {
          'Content-Type': 'application/json',
        },
        body: jsonEncode({
          'contents': [
            {
              'parts': [
                {'text': userMessage}
              ]
            }
          ]
        }),
      );

      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        return data['candidates'][0]['content']['parts'][0]['text'] ?? 'No response text.';
      } else {
        return 'Gemini API error: ${response.statusCode}';
      }
    } catch (e) {
      return 'Error communicating with Gemini: $e';
    }
  }
}
