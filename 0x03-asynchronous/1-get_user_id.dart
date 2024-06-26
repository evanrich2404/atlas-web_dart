import '1-util.dart';
import 'dart:convert';

Future<String> getUserId() async {
  try {
    String userData = await fetchUserData();
    var decodedData = jsonDecode(userData);
    return decodedData['id'];
  } catch (e) {
    print('Error: $e');
    return '';
  }
}
