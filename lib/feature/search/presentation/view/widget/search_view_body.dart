import 'package:bookly_clean_architecture_app/core/Utils/styles.dart';
import 'package:bookly_clean_architecture_app/feature/search/presentation/view/widget/search_result_list_view.dart';
import 'package:bookly_clean_architecture_app/feature/search/presentation/view/widget/search_text_field.dart';
import 'package:flutter/cupertino.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SearchTextField(),
          Text('Search Result', style: Styles.textStyle18),
          const SizedBox(height: 16),
          SearchResultListView(),
        ],
      ),
    );
  }
}
