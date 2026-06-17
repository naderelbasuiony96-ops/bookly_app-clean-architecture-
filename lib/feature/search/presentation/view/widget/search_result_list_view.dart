import 'package:flutter/cupertino.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemCount: 10,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsetsGeometry.symmetric(vertical: 10),
          child: Text('data'),
        );
      },
    );
  }
}
