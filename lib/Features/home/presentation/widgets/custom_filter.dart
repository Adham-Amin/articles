import 'package:articles/Core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CustomFilter extends StatelessWidget {
  const CustomFilter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 8,
        ),
        Container(
          height: 48,
          width: 48,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: AppColors.orange,
          ),
          child: Icon(
            Icons.filter_list,
            color: AppColors.white,
          ),
        ),
      ],
    );
  }
}
