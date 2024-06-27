import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:lumify_notes/features/home/presentation/single_note_card.dart';

import '../../../../configurations/configurations.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(kPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.settings_rounded),
                ),
                OpenContainer(
                  transitionType: ContainerTransitionType.fadeThrough,
                  openBuilder: (BuildContext context, VoidCallback _) {
                    return const Scaffold(
                      body: Text("Coming Soon"),
                    );
                  },
                  closedColor: Theme.of(context).primaryColor,
                  closedBuilder:
                      (BuildContext context, VoidCallback openContainer) {
                    return const SizedBox(
                      height: 32,
                      width: 32,
                      child: Center(
                        child: Icon(
                          Icons.search_rounded,
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Column(
              children: [
                Row(
                  children: [
                    SingleNoteCard(
                      title: 'My Notes',
                      color: Color(0xffFFB2BC),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
