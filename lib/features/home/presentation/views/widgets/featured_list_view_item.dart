import 'package:bookly/core/utils/assets_data.dart';
import 'package:flutter/material.dart';

class FeaturedListViewItem extends StatelessWidget {
  const FeaturedListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 4,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          // color: Colors.grey[700],
        ),
        child: Image.asset(
          AssetsData.testImage,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
