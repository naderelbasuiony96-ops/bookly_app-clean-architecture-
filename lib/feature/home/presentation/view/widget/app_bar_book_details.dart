import 'package:bookly_clean_architecture_app/core/Utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppBarBookDetails extends StatelessWidget {
  const AppBarBookDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {
            GoRouter.of(context).push(AppRouter.kHomeView);
          },
          icon: Icon(Icons.close),
        ),
        IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart)),
      ],
    );
  }
}
