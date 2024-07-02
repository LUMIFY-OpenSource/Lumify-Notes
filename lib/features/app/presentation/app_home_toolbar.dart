import 'package:animations/animations.dart';
import 'package:flutter/material.dart';

import '../../../configurations/configurations.dart';

class AppHomeToolbar extends StatelessWidget implements PreferredSizeWidget {
  const AppHomeToolbar({
    super.key,
    required this.selectedIndex,
    required this.activeIconColor,
  });

  final int selectedIndex;
  final String activeIconColor;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.all(kPadding),
      child: AppBar(
        backgroundColor: theme.primaryColor,
        leadingWidth: kPadding * 6,
        elevation: 0,
        title: Row(
          children: [
            GestureDetector(
              onTap: () {},
              child: const Icon(Icons.settings_rounded),
            ),
            const Spacer(),
            _TabToggleButton(
                selectedIndex: selectedIndex, activeIconColor: activeIconColor),
            const Spacer(),
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
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kPadding * 8);
}

class _TabToggleButton extends StatelessWidget {
  const _TabToggleButton({
    super.key,
    required this.selectedIndex,
    required this.activeIconColor,
  });

  final int selectedIndex;
  final String activeIconColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 34,
      width: kPadding * 15,
      //margin: EdgeInsets.all(70),
      decoration: BoxDecoration(
        color: const Color(0xff3B3B3B),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
        child: IntrinsicHeight(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {},
                child: const Icon(Icons.folder),
              ),
              const VerticalDivider(
                color: Colors.white,
              ),
              GestureDetector(
                onTap: () {},
                child: const Icon(Icons.note_add),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
