import 'package:flutter/material.dart';

class Poster extends StatelessWidget {
  static const POSTER_RATIO = 0.7;

  const Poster(
    this.posterUrl, {super.key, 
    this.height = 100.0, required this.index,
  });

  final String? posterUrl;
  final double height;
  final int index;

  @override
  Widget build(BuildContext context) {
    var width = POSTER_RATIO * height;

    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        image: DecorationImage(image: AssetImage( posterUrl!,
       ), fit: BoxFit.cover,
       
       )
      ),
    );
  }
}