import 'package:flutter/material.dart';
import 'package:lumify_notes/features/notebook/models/notebook_model.dart';

class SingleNotebookCard extends StatelessWidget {
  final NoteBook notebook;

  const SingleNotebookCard(
      {super.key, required this.notebook});

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
              color: Color(notebook.color),
              borderRadius: BorderRadius.circular(8),
            ),
            child: notebook.emoji != null
                ? Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      notebook.emoji!,
                      textAlign: TextAlign.end,
                      style: theme.textTheme.headlineSmall,
                    ),
                  )
                : const Offstage(),
          ),
          const SizedBox(height: 8),
          Text(
            notebook.name,
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
