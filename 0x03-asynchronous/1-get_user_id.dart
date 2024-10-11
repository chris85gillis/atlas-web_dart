// 1-get_user_id.dart
import 'dart:convert'; // To decode JSON data
import '1-util.dart';  // Importing the utility file that contains fetchUserData()

Future<String> getUserId() async {
  try {
    // Call fetchUserData() and await its result
    String userData = await fetchUserData();

    // Parse the JSON data
    Map<String, dynamic> userMap = jsonDecode(userData);

    // Return the user ID
    return userMap['id'];
  } catch (e) {
    return "Error fetching user ID: $e";
  }
}