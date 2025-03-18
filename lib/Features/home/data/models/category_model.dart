import 'package:articles/Core/utils/app_assets.dart';

class CategoryModel {
  final String name;
  final String image;

  const CategoryModel({required this.name, required this.image});
}

List<CategoryModel> categories = [
  CategoryModel(name: 'Business', image: AppAssets.imBusiness),
  CategoryModel(name: 'Entertainment', image: AppAssets.imEntertainment),
  CategoryModel(name: 'General', image: AppAssets.imGeneral),
  CategoryModel(name: 'Health', image: AppAssets.imHealth),
  CategoryModel(name: 'Science', image: AppAssets.imScience),
  CategoryModel(name: 'Sports', image: AppAssets.imSports),
  CategoryModel(name: 'Technology', image: AppAssets.imTechnology),
];