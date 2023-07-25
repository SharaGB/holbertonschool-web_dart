import 'dart:convert';
import '4-util.dart';

Future<num> calculateTotal() async {
  try {
    Map<String, dynamic> user_data_response = json.decode(await fetchUserData());
    String user_id = user_data_response['id'];
    List<dynamic> user_orders_response = json.decode(await fetchUserOrders(user_id));
    num total = 0;
    for (String order in user_orders_response) {
      total += json.decode(await fetchProductPrice(order));
    }
    return total;
  }
  catch (error) {
    return -1;
  }
}
