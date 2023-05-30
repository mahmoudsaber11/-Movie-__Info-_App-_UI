import 'package:flutter/material.dart';
import 'package:movie_app/constants.dart';

import '../../../models/movie.dart';

class TitleDurationAndFabBtn extends StatelessWidget {
  const TitleDurationAndFabBtn({
    super.key,
    required this.movie,
  });

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kDefaultPadding),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(movie.title,
                    style: Theme.of(context).textTheme.headlineSmall),
                const SizedBox(
                  height: kDefaultPadding / 2,
                ),
                Row(
                  children: [
                    Text(
                      "${movie.year}",
                      style: const TextStyle(color: kTextLightColor),
                    ),
                    const SizedBox(
                      width: kDefaultPadding / 2,
                    ),
                    const Text(
                      'PG-13',
                      style: TextStyle(color: kTextLightColor),
                    ),
                    const SizedBox(
                      width: kDefaultPadding / 2,
                    ),
                    const Text(
                      '2h 32min',
                      style: TextStyle(color: kTextLightColor),
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: kSecondaryColor,
                borderRadius: BorderRadius.circular(20)),
            height: 64,
            width: 64,
            child: TextButton(
              onPressed: () {},
              child: const Icon(
                Icons.add,
                color: Colors.white,
                size: 28,
              ),
            ),
          )
        ],
      ),
    );
  }
}
