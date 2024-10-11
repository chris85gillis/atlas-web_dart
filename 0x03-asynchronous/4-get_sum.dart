import 'dart:convert';
import '4-util.dart'; // Importing utility functions

Future<double> calculateTotal() async {
  try {
    // Fetch user data
    String userData = await fetchUserData();
    // Parse the user data to get the user ID
    Map<String, dynamic> userMap = jsonDecode(userData);
    String userId = userMap['id'];

    // Fetch user orders based on the user ID
    String ordersData = await fetchUserOrders(userId);
    List<dynamic> orders = jsonDecode(ordersData);

    // Initialize total price
    double totalPrice = 0.0;

    // Iterate over each order (product) and fetch its price
    for (var product in orders) {
      String productPriceData = await fetchProductPrice(product);
      double productPrice = double.parse(productPriceData);
      totalPrice += productPrice;
    }

    // Return the total price
    return totalPrice;
  } catch (e) {
    // In case of any error, return -1 as an integer
    return -1;
  }
}