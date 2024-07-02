import 'package:flutter/material.dart';
import 'package:flutter_expandable_fab/flutter_expandable_fab.dart';
import 'package:lumify_notes/features/app/app.dart';

import '../../../../configurations/configurations.dart';
import '../app_home_toolbar.dart';

@RoutePage()
class AppHomePage extends StatelessWidget implements AutoRouteWrapper {
  AppHomePage({
    Key? key,
  }) : super(key: key);

  final expandableKey = GlobalKey<ExpandableFabState>();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return AutoTabsScaffold(
      routes: const [
        NotebookRoute(),
        NoteRoute(),
      ],
      transitionBuilder: (context, child, animation) {
        const begin = Offset(1.0, 0.0);
        const end = Offset.zero;
        const curve = Curves.fastOutSlowIn;

        if ((context.tabsRouter.previousIndex ?? 0) <
            context.tabsRouter.activeIndex) {
          return SlideTransition(
            position: animation.drive(
              Tween(begin: begin, end: end).chain(
                CurveTween(
                  curve: curve,
                ),
              ),
            ),
            child: child,
          );
        } else {
          return SlideTransition(
            position: animation.drive(
              Tween(begin: -begin, end: -end).chain(
                CurveTween(curve: curve),
              ),
            ),
            child: child,
          );
        }
      },
      animationCurve: Curves.easeInOut,
      resizeToAvoidBottomInset: false,
      appBarBuilder: (context, tabsRouter) {
        return AppHomeToolbar(selectedIndex: tabsRouter.activeIndex, activeIconColor: '',);
      }
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) => this;
}
