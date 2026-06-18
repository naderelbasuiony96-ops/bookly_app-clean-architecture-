import 'package:bookly_clean_architecture_app/feature/home/presentation/view/widget/newset_books_list_view_item.dart';
import 'package:flutter/cupertino.dart';

class NewsetBooksListView extends StatelessWidget {
  const NewsetBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemCount: 10,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsetsGeometry.symmetric(vertical: 10),
          child: NewsetBooksListViewItem(),
        );
      },
    );
  }
}
