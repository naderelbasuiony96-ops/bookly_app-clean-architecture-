import 'package:bookly_clean_architecture_app/core/Utils/app_router.dart';
import 'package:bookly_clean_architecture_app/feature/home/presentation/view/widget/featured_list_view_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

class FeaturedBookListView extends StatelessWidget {
  const FeaturedBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,

        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: GestureDetector(
              onTap: () {
                GoRouter.of(context).push(AppRouter.kBookDetailsView);
              },
              child: FeaturedListViewItem(),
            ),
          );
        },
      ),
    );
  }
}
