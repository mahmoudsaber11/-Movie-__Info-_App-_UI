import 'package:flutter/material.dart';

import '../../../models/movie.dart';
import '../../home/widgets/genre_card.dart';

class GenresDetails extends StatelessWidget {
  const GenresDetails({
    super.key,
    required this.movie,
  });

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: SizedBox(
        height: 36,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: movie.genra.length,
          itemBuilder: (context, index) => GenreCard(genre: movie.genra[index]),
        ),
      ),
    );
  }
}
