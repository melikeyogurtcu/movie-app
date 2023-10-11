import 'package:flutter/material.dart';

class Storyline extends StatelessWidget {
  Storyline(this.storyline);
  final String? storyline;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var textTheme = Theme.of(context).textTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Story line',
          style: textTheme.subtitle1!.copyWith(fontSize: 18.0),
        ),
        SizedBox(height: 8.0),
        Text(
          storyline!,
          style: textTheme.bodyText2!.copyWith(
            color: Colors.black45,
            fontSize: 16.0,
          ),
        ),
        Row(
  mainAxisAlignment: MainAxisAlignment.end,
  crossAxisAlignment: CrossAxisAlignment.end,
  children: [
    GestureDetector(
      onTap: () {
        // 'more' yazısına tıklandığında yapılacak işlemler
      },
      child: Text(
        'more',
        style: textTheme.bodyText2!
            .copyWith(fontSize: 16.0, color: theme.colorScheme.secondary),
      ),
    ),
    GestureDetector(
      onTap: () {
        // 'keyboard_arrow_down' simgesine tıklandığında yapılacak işlemler
      },
      child: Icon(
        Icons.keyboard_arrow_down,
        size: 18.0,
        color: theme.colorScheme.secondary,
      ),
    ),
  ],
),

      ],
    );
  }
}
