import '4-util.dart';
import 'dart:convert';

Future<double> calculateTotal() async {
  try {
    String userData = await fetchUserData();
    var decodedUserData = jsonDecode(userData);
    String userId = decodedUserData['id'];

    String userOrders = await fetchUserOrders(userId);
    var decodedOrders = jsonDecode(userOrders) as List;

    double total = 0.0;
    for (var product in decodedOrders) {
      String productPriceStr = await fetchProductPrice(product);
      double productPrice = double.parse(jsonDecode(productPriceStr).toString());
      total += productPrice;
    }
    return total;
  } catch (e) {
    return -1;
  }
}
