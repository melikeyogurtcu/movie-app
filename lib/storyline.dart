import 'package:flutter/material.dart';

class Storyline extends StatelessWidget {
  const Storyline(this.storyline, {super.key});
  final String? storyline;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var textTheme = Theme.of(context).textTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          title: Text(
            'Story line',
            style: textTheme.titleMedium!.copyWith(fontSize: 18.0),
          ),
        ),
        const SizedBox(height: 8.0),
        Text(
          storyline!,
          style: textTheme.bodyMedium!.copyWith(
            color: Colors.black45,
            fontSize: 16.0,
          ),
          maxLines: 5,
          overflow: TextOverflow.ellipsis,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: const Text('Story line'),
                        content: Text(storyline!),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text('Close'),
                          ),
                        ],
                      );
                    },
                  );
                  
                },
                child: const Text('Read more',
                    style: TextStyle(color: Colors.black, fontSize: 16.0)  ))
          ],
        ),
      ],
    );
  }
}
