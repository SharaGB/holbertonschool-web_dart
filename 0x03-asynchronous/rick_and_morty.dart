import "package:http/http.dart" as http;
import 'dart:convert';

Future<void> printRmCharacters() async {
  try {
    http.Response response = await http.get(Uri.parse('https://rickandmortyapi.com/api/character'),);
    List<dynamic> characters = json.decode(response.body)['results'];
    for (Map<String, dynamic> character in characters) {
      print(character['name']);
    }
  }
  catch (error) {
    print ("error caught: $error");
  }
}
