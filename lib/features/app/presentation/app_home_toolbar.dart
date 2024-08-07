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
              child: const Icon(
                Icons.settings_rounded,
                size: 26,
              ),
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
                      size: 26,
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
    required this.selectedIndex,
    required this.activeIconColor,
  });

  final int selectedIndex;
  final String activeIconColor;

  @override
  Widget build(BuildContext context) {
    final autoTabRouter = AutoTabsRouter.of(context);
    return Container(
      // height: 34,
      width: kPadding * 18,
      //margin: EdgeInsets.all(70),
      decoration: BoxDecoration(
        color: const Color(0xff3B3B3B),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
        child: IntrinsicHeight(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  autoTabRouter.setActiveIndex(0);
                },
                child: Icon(
                  selectedIndex == 0
                      ? Icons.folder_copy_rounded
                      : Icons.folder_copy_outlined,
                  size: kPadding * 3,
                ),
              ),
              const VerticalDivider(
                color: Colors.white,
              ),
              GestureDetector(
                onTap: () {
                  autoTabRouter.setActiveIndex(1);
                },
                child: Icon(
                  selectedIndex == 1
                      ? Icons.sticky_note_2_rounded
                      : Icons.sticky_note_2_outlined,
                  size: kPadding * 3,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
