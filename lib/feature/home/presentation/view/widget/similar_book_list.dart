import 'package:bookly_clean_architecture_app/feature/home/presentation/view/widget/custom%20_book%20_image.dart';
import 'package:flutter/cupertino.dart';

class SimilarBookList extends StatelessWidget {
  const SimilarBookList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .2,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,

        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: CustomBookImage(),
          );
        },
      ),
    );
  }
}
