import 'dart:convert';
import 'package:http/http.dart' as http;
import 'post.dart';

Future<Posts> fetchPosts(String num) async {
  final response =
      await http.get(Uri.parse('https://197.156.64.233/bill1/$num/CK'));

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return Posts.fromJson(json.decode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('ምንም አይነት ያስገብትን የሚመስል የደንበኛ ቁጥር የለም');
    //Text('ምንም አይነት ያስገብትን የሚመስል የደንበኛ ቁጥር የለም');
  }
}

