import 'package:movie_app/movie_model.dart';

import 'models.dart';
import 'movie_detail_header.dart';
import 'storyline.dart';

import 'package:flutter/material.dart';

class MovieDetailsPage extends StatefulWidget {
   MovieDetailsPage(this.movie, this.index);
  final Movie2 movie;
  final int index;

  @override
  State<MovieDetailsPage> createState() => _MovieDetailsPageState();
}

class _MovieDetailsPageState extends State<MovieDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          MovieDetailHeader(widget.movie,widget.index),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Storyline(widget.movie.overview),
          ),
          const SizedBox(height: 20.0),
          const SizedBox(height: 50.0),
        ],
      ),
    );
  }
}