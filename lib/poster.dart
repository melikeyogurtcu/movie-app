import 'package:flutter/material.dart';
import 'functions.dart';
import 'movie_model.dart';
import 'home_page.dart';
class Poster extends StatefulWidget {
  static const POSTER_RATIO = 0.7;

   Poster(
    this.posterUrl, {super.key, 
    this.height = 100.0, required this.index,
  });

  final String? posterUrl;
  final double height;
  final int index;

  @override
  State<Poster> createState() => _PosterState();
}

class _PosterState extends State<Poster> {
  

  @override
  Widget build(BuildContext context) {
    var width = Poster.POSTER_RATIO * widget.height;

    return Container(
      height: widget.height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),

        
        image:    
        
        
         DecorationImage(image: NetworkImage(("https://image.tmdb.org/t/p/w200${widget.posterUrl}"),
       ), fit: BoxFit.cover,
       
       )
      ),
    );
  }
}