import 'package:auto_route/auto_route.dart';

import '../../../../configurations/router/router.gr.dart';

final loginRoutes = [
  RedirectRoute(path: '', redirectTo: 'options'),
  AutoRoute(
    path: 'options',
    page: LoginOptionsRouter.page,
    children: const [],
  ),
];
