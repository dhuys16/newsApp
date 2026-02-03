class NewsResponse {
  final String status;
  final int totalResults;
  final List<Article> articles;

  NewsResponse({
    required this.status,
    required this.totalResults,
    required this.articles,
  });

  factory NewsResponse.fromJson(Map<String, dynamic> json) => NewsResponse(
    status: json["status"] ?? "",
    totalResults: json["totalResults"] ?? 0,
    articles: List<Article>.from(
      (json["articles"] ?? []).map((x) => Article.fromJson(x)),
    ),
  );
}

class Article {
  final String title;
  final String? author;
  final String description;
  final String? urlToImage;
  final String url;
  final String? publishedAt;
  final String? content;

  Article({
    required this.title,
    this.author,
    required this.description,
    this.urlToImage,
    required this.url,
    this.publishedAt,
    this.content,
  });

  factory Article.fromJson(Map<String, dynamic> json) => Article(
    title: json["title"] ?? "No Title",
    author: json["author"],
    description: json["description"] ?? "No Description",
    urlToImage: json["urlToImage"],
    url: json["url"] ?? "",
    publishedAt: json["publishedAt"],
    content: json["content"],
  );
}
