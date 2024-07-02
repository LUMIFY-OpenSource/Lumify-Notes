import 'package:animations/animations.dart';
import 'package:flutter/material.dart';

import '../../../../configurations/configurations.dart';
import '../notes_grid_view.dart';

@RoutePage()
class NotebookPage extends StatelessWidget {
  const NotebookPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      height: MediaQuery.of(context).size.height,
      padding: const EdgeInsets.all(kPadding),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          SizedBox(
            height: 10,
          ),
          Expanded(
            child: NotesGridView(),
          ),
        ],
      ),
    );
  }
}
