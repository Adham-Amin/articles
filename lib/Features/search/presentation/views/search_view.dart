import 'package:articles/Core/utils/app_colors.dart';
import 'package:articles/Core/utils/services_locator.dart';
import 'package:articles/Features/search/data/repos/search_repo_impl.dart';
import 'package:articles/Features/search/presentation/manager/cubit/search_cubit.dart';
import 'package:articles/Features/search/presentation/widgets/search_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        scrolledUnderElevation: 0,
        leading: IconButton(
          onPressed: () => GoRouter.of(context).pop(),
          icon: const Icon(Icons.arrow_back_ios),
        ),
        title: Text('Search'),
        centerTitle: true,
        backgroundColor: AppColors.orange,
      ),
      body: BlocProvider(
        create: (context) => SearchCubit(getIt.get<SearchRepoImpl>()),
        child: SearchViewBody(),
      ),
    );
  }
}
