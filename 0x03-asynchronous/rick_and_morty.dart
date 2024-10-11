// rick_and_morty.dart
import 'dart:convert';
import 'package:http/http.dart' as http;

// Function to print Rick and Morty characters
Future<void> printRmCharacters() async {
  const url = 'https://rickandmortyapi.com/api/character';

  try {
    // Make the HTTP GET request
    final response = await http.get(Uri.parse(url));

    // Check if the request was successful
    if (response.statusCode == 200) {
      // Parse the response body
      final data = jsonDecode(response.body);

      // Extract the results (list of characters)
      final List characters = data['results'];

      // Print the name of each character
      for (var character in characters) {
        print(character['name']);
      }
    } else {
      // If the response was not successful, print the error
      print('Failed to load characters, Status Code: ${response.statusCode}');
    }
  } catch (e) {
    // Handle any exceptions that occur
    print('error caught: $e');
  }
}