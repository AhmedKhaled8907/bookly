import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Icon(
          FontAwesomeIcons.solidStar,
          size: 16,
          color: Color(0xffFFDD4F),
        ),
        SizedBox(width: 6),
        Text(
          '4.8',
          style: Styles.textStyle16,
        ),
        SizedBox(width: 9),
        Text(
          '(2250)',
          style: Styles.textStyle14,
        ),
      ],
    );
  }
}
