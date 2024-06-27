import 'package:animations/animations.dart';
import 'package:flutter/material.dart';

import '../../../../configurations/configurations.dart';
import '../notes_grid_view.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      height: MediaQuery.of(context).size.height,
      padding: const EdgeInsets.all(kPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
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
                closedBuilder: (BuildContext context, VoidCallback openContainer) {
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
          const Expanded(
            child: NotesGridView(),
          ),
        ],
      ),
    );
  }
}
