import 'dart:convert';
import '3-util.dart';

Future<String> greetUser() async {
  try {
    Map<String, dynamic> response = json.decode(await fetchUserData());
    return "Hello ${response['username']}";
  }
  catch (error) {
    return "error caught: $error";
  }
}

Future<String> loginUser() async {
  bool user_exists = await checkCredentials();
  print ("There is a user: ${user_exists}");
  if (user_exists)
    return greetUser();
  return "Wrong credentials";
}
