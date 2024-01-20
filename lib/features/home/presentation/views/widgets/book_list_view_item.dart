import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({super.key, required this.book});

  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kBookDetailsView);
      },
      child: SizedBox(
        height: 125,
        child: Row(
          children: [
            // the image
            CustomBookImage(imageUrl: book.volumeInfo.imageLinks.thumbnail),
            const SizedBox(width: 30),
            Expanded(
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // the title
                    Text(
                      book.volumeInfo.title!,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Styles.textStyle20,
                    ),

                    const SizedBox(height: 3),

                    // the author's name
                    Opacity(
                      opacity: 0.7,
                      child: Text(
                        book.volumeInfo.authors!.first,
                        style: Styles.textStyle14,
                      ),
                    ),

                    const SizedBox(height: 3),

                    // the price and book rating
                    Row(
                      children: [
                        const Text(
                          'Free',
                          style: Styles.textStyle20,
                        ),
                        const Spacer(),
                        BookRating(
                          rating: book.volumeInfo.averageRating ?? 0,
                          count: book.volumeInfo.ratingsCount ?? 0,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
