// 3-greet_user.dart
import 'dart:convert'; // For decoding JSON
import '3-util.dart';  // Import the utility file that contains fetchUserData() and checkCredentials()

// Function to greet the user
Future<String> greetUser() async {
  try {
    // Fetch user data
    String userData = await fetchUserData();

    // Parse the JSON data
    Map<String, dynamic> userMap = jsonDecode(userData);

    // Return the greeting with the username
    return 'Hello ${userMap['username']}';
  } catch (e) {
    // Return error message in case of an exception
    return 'error caught: $e';
  }
}

// Function to log in the user
Future<String> loginUser() async {
  try {
    // Check user credentials
    bool isValidUser = await checkCredentials();

    // If credentials are valid
    if (isValidUser) {
      print('There is a user: true');
      // Call greetUser() and return its value
      return await greetUser();
    } else {
      print('There is a user: false');
      return 'Wrong credentials';
    }
  } catch (e) {
    // Return error message in case of an exception
    return 'error caught: $e';
  }
}