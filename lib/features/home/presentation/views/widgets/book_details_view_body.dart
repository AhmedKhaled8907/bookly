import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

import 'custom_book_details_app_bar.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // the app bar
          const CustomBookDetailsAppBar(),

          const SizedBox(height: 36),

          // the image
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.17),
            child: const CustomBookImage(),
          ),

          const SizedBox(height: 40),

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
      ),
    );
  }
}
