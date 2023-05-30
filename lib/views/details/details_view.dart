import 'package:flutter/material.dart';
import 'package:movie_app/models/movie.dart';
import 'package:movie_app/views/details/widgets/body.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({super.key, required this.movie});
  final Movie movie;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BodyDetails(
        movie: movie,
      ),
    );
  }
}
