import 'package:flutter/material.dart';

import '../../features/app/app.dart';
import '../../features/authentication/presentation/pages/login_routes.dart';
import '../configurations.dart';

export 'package:auto_route/auto_route.dart';

export 'route_parser.dart';
export 'router.gr.dart';

@AutoRouterConfig(
  replaceInRouteName: 'Page,Route',
  deferredLoading: true,
)
class AppRouter extends $AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.adaptive();

  @override
  final List<AutoRoute> routes = [
    AutoRoute(
      path: '*',
      page: UnknownRoute.page,
    ),
    AutoRoute(
      path: '/login',
      page: LoginRouter.page,
      children: loginRoutes,
    ),
    AutoRoute(
      path: '/app-home',
      page: AppHomeRoute.page,
      children: appHomeRoutes,
      // guards: [AuthGuard()],
    ),
    CustomRoute(
      customRouteBuilder: dialogRouteBuilder,
      page: CreateNotebookDialogRoute.page,
      path: '/create-notebook',
    )
  ];
}

Route<T> modalSheetBuilder<T>(
        BuildContext context, Widget child, AutoRoutePage<T> page) =>
    ModalBottomSheetRoute(
      settings: page,
      isScrollControlled: true,
      constraints: BoxConstraints(
        maxHeight: (MediaQuery.of(context).size.height / 10) * 7,
      ),
      builder: (context) => child,
    );

Route<T> dialogRouteBuilder<T>(
        BuildContext context, Widget child, AutoRoutePage<T> page) =>
    DialogRoute(
      settings: page,
      barrierDismissible: true,
      builder: (context) => child,
      context: context,
      useSafeArea: true,
      barrierColor: AppColors.surfaceVariantDark.withOpacity(.8),
    );
