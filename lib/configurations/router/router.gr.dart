// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;
import 'package:lumify_notes/features/app/presentation/pages/app_home_page.dart'
    deferred as _i1;
import 'package:lumify_notes/features/app/presentation/pages/unknown_page.dart'
    deferred as _i5;
import 'package:lumify_notes/features/authentication/presentation/pages/login_options_router_page.dart'
    deferred as _i3;
import 'package:lumify_notes/features/authentication/presentation/pages/login_router_page.dart'
    deferred as _i4;
import 'package:lumify_notes/features/home/presentation/pages/home_page.dart'
    deferred as _i2;

abstract class $AppRouter extends _i6.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    AppHomeRoute.name: (routeData) {
      final args = routeData.argsAs<AppHomeRouteArgs>(
          orElse: () => const AppHomeRouteArgs());
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i6.DeferredWidget(
          _i1.loadLibrary,
          () => _i6.WrappedRoute(child: _i1.AppHomePage(key: args.key)),
        ),
      );
    },
    HomeRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i6.DeferredWidget(
          _i2.loadLibrary,
          () => _i2.HomePage(),
        ),
      );
    },
    LoginOptionsRouter.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i6.DeferredWidget(
          _i3.loadLibrary,
          () => _i3.LoginOptionsRouterPage(),
        ),
      );
    },
    LoginRouter.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i6.DeferredWidget(
          _i4.loadLibrary,
          () => _i4.LoginRouterPage(),
        ),
      );
    },
    UnknownRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i6.DeferredWidget(
          _i5.loadLibrary,
          () => _i5.UnknownPage(),
        ),
      );
    },
  };
}

/// generated route for
/// [_i1.AppHomePage]
class AppHomeRoute extends _i6.PageRouteInfo<AppHomeRouteArgs> {
  AppHomeRoute({
    _i7.Key? key,
    List<_i6.PageRouteInfo>? children,
  }) : super(
          AppHomeRoute.name,
          args: AppHomeRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'AppHomeRoute';

  static const _i6.PageInfo<AppHomeRouteArgs> page =
      _i6.PageInfo<AppHomeRouteArgs>(name);
}

class AppHomeRouteArgs {
  const AppHomeRouteArgs({this.key});

  final _i7.Key? key;

  @override
  String toString() {
    return 'AppHomeRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i2.HomePage]
class HomeRoute extends _i6.PageRouteInfo<void> {
  const HomeRoute({List<_i6.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i3.LoginOptionsRouterPage]
class LoginOptionsRouter extends _i6.PageRouteInfo<void> {
  const LoginOptionsRouter({List<_i6.PageRouteInfo>? children})
      : super(
          LoginOptionsRouter.name,
          initialChildren: children,
        );

  static const String name = 'LoginOptionsRouter';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i4.LoginRouterPage]
class LoginRouter extends _i6.PageRouteInfo<void> {
  const LoginRouter({List<_i6.PageRouteInfo>? children})
      : super(
          LoginRouter.name,
          initialChildren: children,
        );

  static const String name = 'LoginRouter';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i5.UnknownPage]
class UnknownRoute extends _i6.PageRouteInfo<void> {
  const UnknownRoute({List<_i6.PageRouteInfo>? children})
      : super(
          UnknownRoute.name,
          initialChildren: children,
        );

  static const String name = 'UnknownRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}
