import 'package:articles/Core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CustomError extends StatelessWidget {
  const CustomError({
    super.key,
    required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        title,
        style: AppStyles.textNormal14,
        textAlign: TextAlign.center,
      ),
    );
  }
}
