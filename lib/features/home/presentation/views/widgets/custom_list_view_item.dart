import 'package:bookly/core/utils/assets_data.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg_flutter.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: AspectRatio(
        aspectRatio: 3 / 4,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
          ),
          child: SvgPicture.asset(
            AssetsData.testImage,
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
