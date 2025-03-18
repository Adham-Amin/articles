import 'package:articles/Core/functions/launch_book.dart';
import 'package:articles/Core/models/article_model.dart';
import 'package:articles/Core/utils/app_styles.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ArticleItem extends StatelessWidget {
  const ArticleItem({
    super.key, required this.article,
  });
  final ArticleModel article;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        launch(context, article.url ?? '');
      },
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: AspectRatio(
              aspectRatio: 16 / 9,
              child: CachedNetworkImage(
                imageUrl:
                    article.urlToImage ?? '',
                fit: BoxFit.fill,
                errorWidget: (context, url, error) => const Icon(Icons.error),
              ),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            article.title ?? 'N/A',
            style: AppStyles.textBlod20,
            textAlign: TextAlign.center,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            article.description ?? 'N/A',
            style: AppStyles.textNormal14,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 8,
          ),
        ],
      ),
    );
  }
}