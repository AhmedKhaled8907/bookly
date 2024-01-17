import 'package:bookly/core/utils/styles.dart';

import 'package:flutter/material.dart';

import 'similar_books_list_view.dart';

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'You can also like',
          textAlign: TextAlign.start,
          style: Styles.textStyle20.copyWith(
            fontWeight: FontWeight.w900,
          ),
        ),

        const SizedBox(height: 16),

        // Similar Books ListView
        const SimilarBooksListView(),
      ],
    );
  }
}