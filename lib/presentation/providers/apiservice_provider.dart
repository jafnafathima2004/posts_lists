import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:posts_list/data/services/api_services.dart';

final apiServiceProvider = Provider((ref) => ApiService());

final postProvider = FutureProvider((ref) {
  return ref.read(apiServiceProvider).fetchPosts();
});