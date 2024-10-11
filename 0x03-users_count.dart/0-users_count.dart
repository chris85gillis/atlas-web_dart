// 0-users_count.dart
import '0-util.dart';  // Importing the utility file that contains fetchUsersCount()

Future<void> usersCount() async {
  try {
    // Call fetchUsersCount() and await its result
    int count = await fetchUsersCount();
    // Print the user count
    print(count);
  } catch (e) {
    print("Error fetching user count: $e");
  }
}