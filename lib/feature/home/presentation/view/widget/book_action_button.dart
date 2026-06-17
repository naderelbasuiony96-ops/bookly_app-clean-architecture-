import 'package:bookly_clean_architecture_app/core/widget/custom_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BookActionButton extends StatelessWidget {
  const BookActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
              backGroundColor: Colors.white,
              textColor: Colors.black,
              title: '19.99 €',
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                bottomLeft: Radius.circular(16),
              ),
            ),
          ),
          Expanded(
            child: CustomButton(
              backGroundColor: Colors.red,
              textColor: Colors.white,
              title: 'Free Preview',
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(16),
                bottomRight: Radius.circular(16),
              ),
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
