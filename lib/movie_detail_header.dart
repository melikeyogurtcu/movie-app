import 'package:flutter/material.dart';
import 'package:movie_app/movie_model.dart';
import 'arc_banner_image.dart';
import 'poster.dart';

// ignore: must_be_immutable
class MovieDetailHeader extends StatelessWidget {
  MovieDetailHeader(this.movie, this.index, {super.key});
  final Movie2 movie;
  final int index;

  List<String> categories = ['Comedy', 'Fantastic'];
  // ignore: unused_element
  List<Widget> _buildCategoryChips(TextTheme textTheme) {
    return categories.map((category) {
      return Padding(
        padding: const EdgeInsets.only(right: 8.0),
        child: Chip(
          label: Text(category),
          labelStyle: textTheme.bodySmall,
          backgroundColor: Colors.black12,
        ),
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    var movieInformation = Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: Text(
            movie.title,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.grey.shade800,
              shadows: [
                Shadow(
                  color: Colors.black.withOpacity(0.3),
                  offset: const Offset(2.0, 2.0),
                  blurRadius: 4.0,
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 12.0),
      ],
    );

    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 140.0),
          child: ArcBannerImage(movie.backdrop_path),
        ),
        Positioned(
          bottom: 20.0,
          left: 16.0,
          right: 16.0,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Hero(
                tag: "hero-$index",
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        offset: const Offset(8.0, 8.0),
                        blurRadius: 8.0,
                      ),
                    ],
                  ),
                  child: Poster(
                    movie.poster_path,
                    height: 180.0,
                    index: index,
                  ),
                ),
              ),
              const SizedBox(width: 16.0),
              Expanded(child: movieInformation),
            ],
          ),
        ),
      ],
    );
  }
}




/*   Row(
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
       */