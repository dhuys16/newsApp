import 'package:get/get.dart';

import '../../../data/models/article.dart';

class SearchController extends GetxController {
  final isLoading = false.obs;
  final searchResults = <Article>[].obs;

  void searchNews(String query) async {
    if (query.isEmpty) {
      searchResults.clear();
      return;
    }

    isLoading.value = true;

    // Simulating API call
    await Future.delayed(const Duration(seconds: 1));


    isLoading.value = false;
  }
}
