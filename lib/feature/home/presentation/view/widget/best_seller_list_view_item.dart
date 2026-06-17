import 'package:bookly_clean_architecture_app/constansts.dart';
import 'package:bookly_clean_architecture_app/core/Utils/assets.dart';
import 'package:bookly_clean_architecture_app/core/Utils/styles.dart';
import 'package:bookly_clean_architecture_app/feature/home/presentation/view/widget/book_raing.dart';
import 'package:flutter/cupertino.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.5 / 4,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: const DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(AssetsData.testImage),
                ),
              ),
            ),
          ),
          const SizedBox(height: 30),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * .5,
                  child: Text(
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    'Harry Potter and The Goblet of Fire',
                    style: Styles.textStyle20,
                  ),
                ),
                const SizedBox(height: 3),
                Text('J.K.Rowlling', style: Styles.textStyle14),
                const SizedBox(height: 3),
                Row(
                  children: [
                    Text(
                      '19.99 €',
                      style: Styles.textStyle20.copyWith(
                        fontFamily: kGTSectraFine,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(),
                    BookRaing(),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
