import 'package:animations/animations.dart';
import 'package:flutter/material.dart';

import '../../../../configurations/configurations.dart';
import '../../../notebook/presentation/notebook_grid_view.dart';
import '../notes_grid_view.dart';

@RoutePage()
class NotePage extends StatelessWidget {
  const NotePage({super.key});

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
            padding: const EdgeInsets.all(kPadding * 1.5),
            child: Row(
              children: [
                const Text(
                  'Notes',
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
                    size: kPadding * 3.5,
                  ),
                ),
                const SizedBox(
                  width: kPadding * 2,
                ),
                GestureDetector(
                  onTap: () {},
                  child: const Icon(
                    Icons.check_circle_outline_rounded,
                    size: kPadding * 3.5,
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
