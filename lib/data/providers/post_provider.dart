import 'dart:convert';

import 'package:comment_api/data/models/post_model.dart';

import 'package:http/http.dart' as http;

class PostProvider {
  Uri url = Uri.parse("https://dummyjson.com/products");
  var client = http.Client();

  Future<List<PostModel>> getPosts() async {
    var response = await client.get(url);
    var objectResponse = jsonDecode(response.body);
    List listResponse = objectResponse['products'];
    List<PostModel> list = [];

    for (int i = 0; i < listResponse.length; i++) {
      PostModel post = PostModel.fromJson(listResponse[i]);
      list.add(post);
    }
    return list;
  }
}
