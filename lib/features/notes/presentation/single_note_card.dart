import 'package:flutter/material.dart';

class SingleNoteCard extends StatelessWidget {
  final String title;
  final Color color;
  final String? emoji;

  const SingleNoteCard({super.key, required this.title, required this.color, this.emoji});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 179,
            width: 156,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(8),
            ),
            child: emoji != null
                ? Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      emoji!,
                      textAlign: TextAlign.end,
                      style: theme.textTheme.headlineSmall,
                    ),
                  )
                : const Offstage(),
          ),
          const SizedBox(height: 8),
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          )
        ],
      ),
    );
  }
}
