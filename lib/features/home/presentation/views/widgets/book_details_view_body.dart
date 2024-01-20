import 'package:bookly/core/utils/styles.dart';

import 'package:flutter/material.dart';

import 'book_action.dart';
import 'book_rating.dart';
import 'custom_book_details_app_bar.dart';
import 'custom_book_image.dart';
import 'similar_books_section.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                // the app bar
                CustomBookDetailsAppBar(),

                SizedBox(height: 16),

                // the image
                BookDetailsSection(),

                SizedBox(height: 36),

                // the buttons
                BookAction(),

                Expanded(
                  child: SizedBox(height: 50),
                ),

                // you can also like text
                SimilarBooksSection(),

                SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.17),
          child: const CustomBookImage(
            imageUrl:
                'https://fifpro.org/media/fhmfhvkx/messi-world-cup.jpg?rxy=0.48356841796117644,0.31512414378031967&width=1000&height=640&rnd=133210253587130000',
          ),
        ),

        const SizedBox(height: 28),

        // the title
        const Text(
          'The Jungle Book',
          textAlign: TextAlign.center,
          style: Styles.textStyle30,
        ),

        const SizedBox(height: 4),

        // the author
        Opacity(
          opacity: 0.7,
          child: Text(
            'Rudyard Kipling',
            textAlign: TextAlign.center,
            style: Styles.textStyle18.copyWith(
              fontStyle: FontStyle.italic,
            ),
          ),
        ),

        const SizedBox(height: 14),

        // the rating
        const BookRating(),
      ],
    );
  }
}
