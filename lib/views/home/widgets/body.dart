import 'package:flutter/material.dart';
import 'package:movie_app/constants.dart';
import 'categories.dart';
import 'genre_card.dart';
import 'movie_carousel.dart';

class Body extends StatelessWidget {
  const Body({super.key});
  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          CategoryList(),
          Genres(),
          SizedBox(
            height: kDefaultPadding,
          ),
          MovieCarousel(),
        ],
      ),
    );
  }
}
