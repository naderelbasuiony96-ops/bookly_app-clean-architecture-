import 'package:bookly_clean_architecture_app/core/Utils/app_router.dart';
import 'package:bookly_clean_architecture_app/core/Utils/assets.dart';
import 'package:bookly_clean_architecture_app/feature/splash/presentation/view/widget/sliding_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;
  @override
  void initState() {
    super.initState();
    inslidingAnimation();
    navigateHomeView();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.logo),
        const SizedBox(height: 2),
        SlidingText(slidinAnimation: slidingAnimation),
      ],
    );
  }

  void inslidingAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    slidingAnimation = Tween<Offset>(
      begin: Offset(0, 2),
      end: Offset.zero,
    ).animate(animationController);
    animationController.forward();
  }

  void navigateHomeView() {
    Future.delayed(const Duration(seconds: 2), () {
      if (context.mounted) {
        GoRouter.of(context).push(AppRouter.kHomeView);
      }
    });
  }
}
