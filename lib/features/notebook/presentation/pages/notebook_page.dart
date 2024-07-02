import 'package:animations/animations.dart';
import 'package:flutter/cupertino.dart';
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                const Text(
                  'Notebooks',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {},
                  child: const Icon(
                    Icons.sort_rounded,
                    size: 30,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Expanded(
            child: NotesGridView(),
          ),
        ],
      ),
    );
  }
}
