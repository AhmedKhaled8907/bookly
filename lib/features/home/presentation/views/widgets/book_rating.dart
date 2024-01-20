import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({
    super.key,
    required this.rating,
    required this.count,
  });

  final int rating, count;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          size: 16,
          color: Color(0xffFFDD4F),
        ),
        const SizedBox(width: 6),
        Text(
          rating.toString(),
          style: Styles.textStyle18,
        ),
        const SizedBox(width: 9),
        Opacity(
          opacity: 0.5,
          child: Text(
            '($count)',
            style: Styles.textStyle14,
          ),
        ),
      ],
    );
  }
}
