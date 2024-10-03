import 'package:flutter/material.dart';
import 'package:flutter_expandable_fab/flutter_expandable_fab.dart';
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
    final primary = theme.colorScheme.primary;
    final onPrimary = theme.colorScheme.onPrimary;

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
        return AppHomeToolbar(
          selectedIndex: tabsRouter.activeIndex,
          activeIconColor: '',
        );
      },
      floatingActionButtonBuilder: (context, tabsRouter) {
        return ExpandableFab(
          openButtonBuilder: RotateFloatingActionButtonBuilder(
            child: const Icon(Icons.add),
            fabSize: ExpandableFabSize.regular,
            foregroundColor: primary,
            backgroundColor: onPrimary,
            shape: const CircleBorder(),
            heroTag: 'open',
          ),
          closeButtonBuilder: DefaultFloatingActionButtonBuilder(
            child: const Icon(Icons.close),
            fabSize: ExpandableFabSize.small,
            foregroundColor: primary,
            backgroundColor: onPrimary,
            shape: const CircleBorder(),
            heroTag: 'close',
          ),
          children: [
            FloatingActionButton(
              onPressed: () {
                context.router.push(
                    const CreateNoteDialogRoute()
                );
              },
              foregroundColor: primary,
              backgroundColor: onPrimary,
              heroTag: 'note',
              child: const Icon(Icons.note_add),
            ),
            FloatingActionButton(
              onPressed: () {
                context.router.push(
                  const CreateNotebookDialogRoute()
                );
              },
              foregroundColor: primary,
              backgroundColor: onPrimary,
              heroTag: 'notebook',
              child: const Icon(Icons.folder_open_rounded),
            ),
          ],
        );
      },
      floatingActionButtonLocation: ExpandableFab.location,
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) => this;
}
