import 'package:movie_app/movie_model.dart';

import 'models.dart';
import 'movie_detail_header.dart';
import 'storyline.dart';

import 'package:flutter/material.dart';

class MovieDetailsPage extends StatelessWidget {
   MovieDetailsPage(this.movie, this.index);
  final Movie2 movie;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          MovieDetailHeader(movie,index),
         
          SizedBox(height: 10,),
            Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 50,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: [
                Text('Language'),
                 Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Text(movie.original_language.toUpperCase(),style: TextStyle(color: Colors.red)),)
               ],
                   ),
            ),
          ),
        ),Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 50,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: [
                Text('Vote Average'),
                 Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Text(movie.vote_average.toString(),style: TextStyle(color: Colors.green)),)
               ],
                   ),
            ),
          ),
        ),]),
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