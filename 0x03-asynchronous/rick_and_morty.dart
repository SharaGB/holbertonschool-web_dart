import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> printRmCharacters() async {
  try {
    final response = await http.get(Uri.parse('https://rickandmortyapi.com/api/character'));
    if (response.statusCode == 200) {
      final jsonData = json.decode(response.body);
      final characters = jsonData['results'];
      for (var character in characters) {
        print(character['name']);
      }
    } else {
      print('Failed to fetch data: ${response.statusCode}');
    }
  } catch (err) {
    print('error caught: $err');
  }
}
