import 'dart:async';
import 'dart:convert';
import '1-util.dart';

Future<String> getUserId() async {
  String userDataJson = await fetchUserData();

  Map<String, dynamic> userData = json.decode(userDataJson);

  String userId = userData['id'];
  return userId;
}
