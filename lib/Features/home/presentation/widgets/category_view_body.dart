import 'package:articles/Core/utils/app_colors.dart';
import 'package:articles/Core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CategoryViewBody extends StatelessWidget {
  const CategoryViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(
            height: 16,
          ),
          Row(
            children: [
              SearchTextField(),
              CustomFilter(),
            ],
          ),
          SizedBox(
            height: 16,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) => Container(color: Colors.red, height: 200,),
            ),
          ),
        ],
      ),
    );
  }
}

class SearchTextField extends StatelessWidget {
  const SearchTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextField(
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
