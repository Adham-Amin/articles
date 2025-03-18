import 'package:articles/Core/utils/app_router.dart';
import 'package:articles/Core/utils/app_styles.dart';
import 'package:articles/Features/splash/presentation/widgets/text_sliding_animation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();
    slidingText();
    navigateToHome(context);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'News',
              style: AppStyles.textBlod42,
            ),
            Text(
              'Cloud',
              style: AppStyles.textBlod42.copyWith(color: Colors.orange),
            ),
          ],
        ),
        TextSlidingAnimation(slidingAnimation: slidingAnimation),
      ],
    );
  }

  void navigateToHome(context) {
    Future.delayed(const Duration(seconds: 3), () {
      GoRouter.of(context).pushReplacement(AppRouter.homeView);
    });
  }

  void slidingText() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    slidingAnimation = Tween<Offset>(
      begin: const Offset(0, 3),
      end: Offset.zero,
    ).animate(animationController);

    animationController.forward();
  }
}