import 'package:get/get.dart';
import '../../../data/services/news_service.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController
  final NewsService newsService = Get.put(NewsService());

  final articles = [].obs;
  final isLoading = true.obs;

  @override
  void onInit() {
    super.onInit();
    getLatestNews();
  }

  void getLatestNews() async {
    try {
      isLoading.value = true;
      // Mengambil berita dengan query default 'technology'
      final response = await newsService.fetchNews('technology');

      if (response.statusCode == 200) {
        // Asumsi data ada di field 'articles' sesuai standar NewsAPI
        articles.value = response.body['articles'];
      }
    } finally {
      isLoading.value = false;
    }
  }


}
