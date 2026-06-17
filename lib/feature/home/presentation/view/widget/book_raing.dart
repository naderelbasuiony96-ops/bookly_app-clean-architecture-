import 'package:bookly_clean_architecture_app/core/Utils/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRaing extends StatelessWidget {
  const BookRaing({
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.start,
  });
  final MainAxisAlignment mainAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FaIcon(FontAwesomeIcons.solidStar, color: Color(0xffFFDD4F)),
        const SizedBox(width: 6.3),
        Text('4.8', style: Styles.textStyle16),
        const SizedBox(width: 5),
        Text(
          '(2390)',
          style: Styles.textStyle14.copyWith(color: Color(0xff707070)),
        ),
      ],
    );
  }
}
