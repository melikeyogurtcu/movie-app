import 'package:movie_app/movie_model.dart';
import 'movie_detail_header.dart';
import 'storyline.dart';
import 'package:flutter/material.dart';

class MovieDetailsPage extends StatelessWidget {
  const MovieDetailsPage(this.movie, this.index, {super.key});
  final Movie2 movie;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          MovieDetailHeader(movie, index),
          const SizedBox(
            height: 10,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Chip(
                label: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text('Language'),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Text(
                        movie.original_language.toUpperCase(),
                        style: const TextStyle(color: Colors.red),
                      ),
                    ),
                  ],
                ),
                avatar: const Icon(Icons.language),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Chip(
                label: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('Vote Average'),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Text(
                        movie.vote_average.toString(),
                        style: TextStyle(color: Colors.green),
                      ),
                    ),
                  ],
                ),
                avatar: const Icon(Icons.star, color: Colors.yellow),
              ),
            ),
          ]),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Storyline(movie.overview),
          ),
          const SizedBox(height: 30.0),
        ],
      ),
    );
  }
}
