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
        children: [
          CustomHomeAppBar(),
          SizedBox(height: 45),
          FeaturedBooksListView(),
        ],
      ),
    );
  }
}
