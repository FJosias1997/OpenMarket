import 'dart:convert';

import 'package:openmarket/data/models/post_model.dart';

import 'package:http/http.dart' as http;

class PostProvider {
  Uri url = Uri.parse("https://dummyjson.com/products");
  var client = http.Client();

  Future<List<ProductModel>> getProducts() async {
    var response = await client.get(url);
    var objectResponse = jsonDecode(response.body);
    List listResponse = objectResponse['products'];
    List<ProductModel> list = [];

    for (int i = 0; i < listResponse.length; i++) {
      ProductModel post = ProductModel.fromJson(listResponse[i]);
      list.add(post);
    }
    return list;
  }

  Future<List<ProductModel>> searchProduct(String query) async {
    var response = await client.get(url);
    var objectResponse = jsonDecode(response.body);
    List listResponse = objectResponse['products'];
    List<ProductModel> list = [];

    for (int i = 0; i < listResponse.length; i++) {
      ProductModel post = ProductModel.fromJson(listResponse[i]);
      if (post.title.toLowerCase().contains(query.toLowerCase())) {
        list.add(post);
      }
    }
    return list;
  }
}
