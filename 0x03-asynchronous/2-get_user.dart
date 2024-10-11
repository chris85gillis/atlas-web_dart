// 2-get_user.dart
import '2-util.dart';  // Import the utility file that contains fetchUser()

Future<void> getUser() async {
  try {
    // Attempt to fetch user data
    String user = await fetchUser();
    // Print user data if successful
    print(user);
  } catch (e) {
    // Handle any errors by printing an error message
    print('error caught: $e');
  }
}