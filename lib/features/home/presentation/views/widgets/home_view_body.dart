import 'package:bookly/features/home/presentation/views/widgets/best_seller_list_view.dart';
import 'package:flutter/material.dart';

import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_home_app_bar.dart';
import 'package:bookly/features/home/presentation/views/widgets/featured_books_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomHomeAppBar(),
                SizedBox(height: 30),
                Text(
                  'Featured Books',
                  style: Styles.textStyle24,
                ),
                SizedBox(height: 30),
                FeaturedBooksListView(),
                SizedBox(height: 45),
                Text(
                  'Newest Books',
                  style: Styles.textStyle24,
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
          SliverFillRemaining(
            child: BestSellerListView(),
          )
        ],
      ),
    );
  }
}
