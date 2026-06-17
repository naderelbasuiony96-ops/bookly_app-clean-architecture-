import 'package:bookly_clean_architecture_app/core/Utils/styles.dart';
import 'package:bookly_clean_architecture_app/feature/home/presentation/view/widget/similar_book_list.dart';
import 'package:flutter/cupertino.dart';

class SimilarBookSection extends StatelessWidget {
  const SimilarBookSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'You can also like',
          style: Styles.textStyle16.copyWith(fontWeight: FontWeight.w600),
        ),
        const SizedBox(height: 16),
        const SimilarBookList(),
      ],
    );
  }
}
