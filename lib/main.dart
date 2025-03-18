import 'package:articles/Core/utils/app_router.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Articles());
}

class Articles extends StatelessWidget {
  const Articles({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter.router,
    );
  }
}