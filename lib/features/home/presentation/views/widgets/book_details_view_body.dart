import 'package:bookly/core/utils/styles.dart';

import 'package:flutter/material.dart';

import 'book_action.dart';
import 'book_rating.dart';
import 'custom_book_details_app_bar.dart';
import 'custom_book_image.dart';
import 'similar_books_list_view.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                // the app bar
                const CustomBookDetailsAppBar(),

                const SizedBox(height: 16),

                // the image
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.17),
                  child: const CustomBookImage(),
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

                const SizedBox(height: 36),

                // the buttons
                const BookAction(),

                const Expanded(
                  child: SizedBox(height: 50),
                ),

                // you can also like text
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'You can also like',
                    textAlign: TextAlign.start,
                    style: Styles.textStyle20.copyWith(
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),

                const SizedBox(height: 16),

                // Similar Books ListView
                const SimilarBooksListView(),

                const SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
