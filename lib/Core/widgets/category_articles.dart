import 'package:articles/Core/models/article_model.dart';
import 'package:articles/Core/widgets/article_item.dart';
import 'package:flutter/material.dart';

class CategoryArticle extends StatelessWidget {
  const CategoryArticle({
    super.key,
    required this.articles,
  });
  final List<ArticleModel> articles;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: articles.length,
        itemBuilder: (context, index) => ArticleItem(
          article: articles[index],
        ),
      ),
    );
  }
}