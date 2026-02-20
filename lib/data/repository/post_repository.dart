

import 'package:posts_list/data/models/posts_model.dart';
import 'package:posts_list/data/services/api_services.dart';

class PostRepository {
  final ApiService apiService;

  PostRepository(this.apiService);

  Future<List<PostModel>> getPosts() async {
    return await apiService.fetchPosts();
  }
}