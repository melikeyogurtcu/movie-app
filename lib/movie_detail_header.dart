import 'package:flutter/material.dart';
import 'package:movie_app/movie_model.dart';

import 'arc_banner_image.dart';
import 'poster.dart';

class MovieDetailHeader extends StatefulWidget {
  const MovieDetailHeader(this.movie, this.index, {super.key});
  final Movie2 movie;
  final int index;

  @override
  State<MovieDetailHeader> createState() => _MovieDetailHeaderState();
}

class _MovieDetailHeaderState extends State<MovieDetailHeader> {
  // List<Widget> _buildCategoryChips(TextTheme textTheme) {
  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;

    var movieInformation = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              widget.movie.title,
              style: textTheme.titleMedium,
            ),
          ],
        ),
        const SizedBox(height: 8.0),
        const SizedBox(height: 12.0),
       // Row(children: _buildCategoryChips(textTheme)),
      ],
    );

    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 140.0),
          child: ArcBannerImage(widget.movie.backdrop_path),
        ),
        Positioned(
          bottom: 0.0,
          left: 16.0,
          right: 16.0,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Hero(

              tag: "hero-${widget.index}",
                child: Poster(
                  widget.movie.poster_path,
                  height: 180.0,
                  index: widget.index,
                ),
              ),
              SizedBox(width: 16.0),
              Expanded(child: movieInformation),
            ],
          ),
        ),
      ],
    );
  }
}