import 'dart:convert';

import 'package:http/http.dart' as http;

class SignUpUserServics {
  static Future signUpUser({
    String? firstname,
    String? lastname,
    String? username,
    String? password,
  }) async {
    Map<String, dynamic> reqBody = {
      'first_name': firstname,
      'last_name': lastname,
      'username': username,
      'password': password,
      'avatar':
          'https://images.unsplash.com/photo-1592234403516-69d83a03f96b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8bWFuJTIwYW5kJTIwYm95fGVufDB8fDB8fA%3D%3D&w=1000&q=80',
    };
    http.Response response = await http.post(
        Uri.parse('https://codelineinfotech.com/student_api/User/signup.php'),
        body: reqBody);

    var result = jsonDecode(response.body);
    print('Sing Up Response === ${jsonDecode(response.body)}');
    return result;
  }

  static Future signUp(Map<String, dynamic> reqBody) async {
    http.Response response = await http.post(
      Uri.parse("https://codelineinfotech.com/student_api/User/signup.php"),
      body: reqBody,
    );
    var result = jsonDecode(response.body);
    print("Status-- >>${response.body}");
    return result;
  }
}
