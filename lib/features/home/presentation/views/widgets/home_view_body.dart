import 'package:bookly/core/utils/assets_data.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_home_app_bar.dart';
import 'package:bookly/features/home/presentation/views/widgets/featured_books_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomHomeAppBar(),
          SizedBox(height: 45),
          FeaturedBooksListView(),
          SizedBox(height: 45),
          Text(
            'Best Seller',
            style: Styles.titleMedium,
          ),
          SizedBox(height: 20),
          BestSellerListViewItem(),
        ],
      ),
    );
  }
}

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.7 / 4,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                // color: Colors.grey[700],
              ),
              child: Image.asset(
                AssetsData.testBookImage,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const Column(
            children: [],
          )
        ],
      ),
    );
  }
}
