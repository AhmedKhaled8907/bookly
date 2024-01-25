import 'package:bookly/Features/home/presentation/views/widgets/newest_books_list_view.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'custom_app_bar.dart';
import 'featured_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

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
                CustomAppBar(),
                Text(
                  'Featured Books',
                  style: Styles.textStyle24,
                ),
                SizedBox(height: 20),
                FeaturedBooksListView(),
                SizedBox(height: 50),
                Text(
                  'Newset Books',
                  style: Styles.textStyle24,
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
          SliverFillRemaining(
            child: NewestBooksListView(),
          ),
        ],
      ),
    );
  }
}
