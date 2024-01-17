import 'package:bookly/core/utils/assets_data.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_rating.dart';
import 'package:flutter/material.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      child: Row(
        children: [
          // the image
          AspectRatio(
            aspectRatio: 2.7 / 4,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Image.asset(
                AssetsData.testBookImage,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(width: 30),
          Expanded(
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.5,
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // the title
                  Text(
                    'Harry Potter and the Goblet of Fire',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Styles.textStyle20,
                  ),

                  SizedBox(height: 3),

                  // the author's name
                  Opacity(
                    opacity: 0.7,
                    child: Text(
                      'J.K. Rowling',
                      style: Styles.textStyle14,
                    ),
                  ),

                  SizedBox(height: 3),

                  // the price and book rating
                  Row(
                    children: [
                      Text(
                        '19.99 €',
                        style: Styles.textStyle20,
                      ),
                      Spacer(),
                      BookRating(),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
