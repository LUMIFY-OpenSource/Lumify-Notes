import '../../../../configurations/configurations.dart';

final appHomeRoutes = [
  AutoRoute(
    initial: true,
    path: 'notebooks',
    page: NotebookRoute.page,
  ),
  AutoRoute(
    path: 'notes',
    page: NoteRoute.page,
  ),
];
