import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:posts_list/data/models/posts_model.dart';

class ApiService {
  Future<List<PostModel>> fetchPosts() async {
    final response = await http.get(
      Uri.parse("https://jsonplaceholder.typicode.com/posts"),
    );

    if (response.statusCode == 200) {
      final List<dynamic> jsonList = jsonDecode(response.body);

      return jsonList
          .map((json) => PostModel.fromJson(json))
          .toList();
    } else {
      throw Exception("Failed to load posts");
    }
  }
}