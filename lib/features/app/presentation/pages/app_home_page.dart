import 'package:flutter/material.dart';
import 'package:flutter_expandable_fab/flutter_expandable_fab.dart';
import 'package:lumify_notes/features/app/app.dart';

import '../../../../configurations/configurations.dart';

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
        HomeRoute(),
      ],
      transitionBuilder: (context, child, animation) {
        const begin = Offset(1.0, 0.0);
        const end = Offset.zero;
        const curve = Curves.fastOutSlowIn;

        if ((context.tabsRouter.previousIndex ?? 0) < context.tabsRouter.activeIndex) {
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
      appBarBuilder: (context, tabsRouter) => LumifyNotesAppBar(
        centerTitle: true,
        appBarTitleText: getAppBarText(tabsRouter.activeIndex),
      ),
      bottomNavigationBuilder: (context, tabsRouter) => SafeArea(
        bottom: true,
        child: SizedBox(
          child: BottomNavigationBar(
            onTap: (value) => tabsRouter.setActiveIndex(value),
            currentIndex: tabsRouter.activeIndex,
            type: BottomNavigationBarType.fixed,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                activeIcon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.list_outlined),
                activeIcon: Icon(Icons.list_outlined),
                label: 'Lists',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person_outlined),
                activeIcon: Icon(Icons.person),
                label: 'Profile',
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) => this;

  String getAppBarText(int activeIndex) {
    switch (activeIndex) {
      case 0:
        return kAppBarTitle;
      case 1:
        return 'Lists';
      case 2:
        return 'Profile';
      default:
        return 'Not Found';
    }
  }
}
