import 'package:articles/Core/utils/app_colors.dart';
import 'package:flutter/material.dart';

abstract class AppStyles {
  static const TextStyle textBlod20 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle textBlod42 = TextStyle(
    fontSize: 42,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle textBlod24 = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
  );
  static TextStyle textNormal14 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.normal,
    color: AppColors.black.withValues(alpha: 0.5),
  );
}