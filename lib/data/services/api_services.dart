
import 'package:http/http.dart' as http;

class ApiService {
  Future<void> fetchPosts() async {
    final response = await http.get(
      Uri.parse("https://jsonplaceholder.typicode.com/posts"),
    );

    print("Status Code: ${response.statusCode}");
    print("Body: ${response.body}");
  }
}