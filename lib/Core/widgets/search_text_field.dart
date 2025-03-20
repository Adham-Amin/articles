import 'package:articles/Core/utils/app_colors.dart';
import 'package:articles/Core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({
    super.key, required this.onChanged,
  });

  final Function(String) onChanged; 
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextField(
        onChanged: onChanged,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: AppColors.orange, width: 2.0),
          ),
          prefixIcon: Icon(
            Icons.search,
          ),
          hintText: 'Search',
          hintStyle: AppStyles.textNormal14,
        ),
      ),
    );
  }
}