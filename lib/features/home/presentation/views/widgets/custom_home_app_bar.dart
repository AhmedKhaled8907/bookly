import 'package:bookly/core/utils/app_router.dart';
import 'package:flutter/material.dart';

import 'package:bookly/core/utils/assets_data.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class CustomHomeAppBar extends StatelessWidget {
  const CustomHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          AssetsData.logo,
          width: size.width * 0.2,
        ),
        IconButton(
          onPressed: () {
            GoRouter.of(context).push(AppRouter.kSearchView);
          },
          icon: const Icon(
            FontAwesomeIcons.magnifyingGlass,
            size: 22,
          ),
        )
      ],
    );
  }
}
