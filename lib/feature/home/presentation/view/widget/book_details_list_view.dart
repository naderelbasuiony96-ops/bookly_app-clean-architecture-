import 'package:bookly_clean_architecture_app/feature/home/presentation/view/widget/book_details_view_body.dart';
import 'package:flutter/material.dart';

class BookDetailsListView extends StatelessWidget {
  const BookDetailsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: BookDetailsViewBody());
  }
}
