import 'models.dart';
import 'movie_detail_header.dart';
import 'storyline.dart';

import 'package:flutter/material.dart';

class MovieDetailsPage extends StatelessWidget {
   MovieDetailsPage(this.movie, this.index);
  final Movie movie;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          MovieDetailHeader(movie,index),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Storyline(movie.storyline),
          ),
          const SizedBox(height: 20.0),
          const SizedBox(height: 50.0),
        ],
      ),
    );
  }
}