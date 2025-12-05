import 'dart:convert';
import '4-util.dart';

Future<double> calculateTotal() async {
  try {
    // Fetch user data.
    final userData = await fetchUserData();
    final user = jsonDecode(userData);
    final id = user['id'];

    // Fetch user orders.
    final ordersData = await fetchUserOrders(id);
    final orders = jsonDecode(ordersData);

    // Fetch product prices and compute sum.
    double total = 0.0;

    for (final product in orders) {
      final priceData = await fetchProductPrice(product);
      final price = jsonDecode(priceData);
      total += price;
    }

    return total;
  } catch (err) {
    return -1;
  }
}
