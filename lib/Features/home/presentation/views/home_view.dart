import 'package:articles/Core/utils/app_colors.dart';
import 'package:articles/Core/utils/app_styles.dart';
import 'package:articles/Features/home/presentation/widgets/home_view_body.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Text(
              'News',
              style: AppStyles.textBlod24,
            ),
            Text(
              'Cloud',
              style: AppStyles.textBlod24.copyWith(color: AppColors.orange),
            ),
        ]),
      ),
      body: HomeViewBody(),
    );
  }
}