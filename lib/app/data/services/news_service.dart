import 'package:get/get.dart';
import '../contants.dart';

class NewsService extends GetConnect {
  Future<Response> fetchNews(String query) => get(
    "${Endpoints.baseUrl}/everything",
    query: {
    'q': query,
    'sortBy': 'popularity',
    'apiKey': Endpoints.apiKey},
  );
}