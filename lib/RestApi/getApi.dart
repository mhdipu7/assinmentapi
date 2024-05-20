import 'dart:convert';
import 'package:http/http.dart' as http;

Future<List> getApi() async {
  var URL = Uri.parse("https://jsonplaceholder.typicode.com/photos");

  try {
    var response = await http.get(URL);
    if (response.statusCode == 200) {
      var photoData = json.decode(response.body);
      return photoData;
    } else {
      print('Error: ${response.statusCode}');
     return [];

    }
  } catch (e) {
    print("Exception: $e");
    return [];
  }

  // var photoData = json.decode(response.body);
}
