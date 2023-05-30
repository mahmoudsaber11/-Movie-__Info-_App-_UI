import 'package:flutter/material.dart';
import 'package:movie_app/constants.dart';
import 'package:movie_app/models/movie.dart';
import 'package:movie_app/views/details/widgets/title_duration_and_fabbtn.dart';
import 'backdrop_and_rating.dart';
import 'cast_and_crew.dart';
import 'genres.dart';

class BodyDetails extends StatelessWidget {
  const BodyDetails({super.key, required this.movie});
  final Movie movie;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BackdropAndRating(size: size, movie: movie),
          const SizedBox(
            height: 10,
          ),
          TitleDurationAndFabBtn(movie: movie),
          GenresDetails(movie: movie),
          Padding(
            padding: const EdgeInsets.symmetric(
                vertical: 10, horizontal: kDefaultPadding),
            child: Text(
              'Plot Summary',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Text(
              movie.plot,
              style: const TextStyle(color: Color(0xFF737599)),
            ),
          ),
          CastAndCrew(
            casts: movie.cast,
          )
        ],
      ),
    );
  }
}
