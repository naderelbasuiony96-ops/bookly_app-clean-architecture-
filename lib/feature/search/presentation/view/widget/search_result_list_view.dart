import 'package:bookly_clean_architecture_app/feature/home/presentation/view/widget/best_seller_list_view_item.dart';
import 'package:flutter/cupertino.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemCount: 10,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsetsGeometry.symmetric(vertical: 10),
          child: BestSellerListViewItem(),
        );
      },
    );
  }
}
