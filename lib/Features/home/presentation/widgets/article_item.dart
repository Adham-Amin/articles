import 'package:articles/Core/utils/app_styles.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ArticleItem extends StatelessWidget {
  const ArticleItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: AspectRatio(
              aspectRatio: 16 / 9,
              child: CachedNetworkImage(
                imageUrl:
                    'https://ichef.bbci.co.uk/images/ic/1200x675/p0ktg69m.jpg',
                fit: BoxFit.fill,
                errorWidget: (context, url, error) => const Icon(Icons.error),
              ),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            "Watch: The Women's Football Show",
            style: AppStyles.textBlod20,
            textAlign: TextAlign.center,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            "Highlights from the Women's Super League as Chelsea travel to face Brighton & Hove Albion, Arsenal welcome West Ham United, and Manchester United play host to Leicester City.",
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