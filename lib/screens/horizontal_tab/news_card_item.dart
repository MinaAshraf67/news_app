import 'package:flutter/material.dart';
import 'package:news_app/models/news_response.dart';

class NewsCardItem extends StatelessWidget {
  Articles articles;

  NewsCardItem(this.articles, {super.key});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Image.network(
            articles.urlToImage ?? "",
            fit: BoxFit.fill,
          ),
          Text(articles.title ?? ""),
          Text(articles.description ?? ""),
          Text(articles.publishedAt?.substring(0, 10) ?? ""),
        ],
      ),
    );
  }
}
