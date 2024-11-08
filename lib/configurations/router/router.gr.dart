// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i10;
import 'package:flutter/material.dart' as _i11;
import 'package:lumify_notes/features/app/presentation/pages/app_home_page.dart'
    deferred as _i1;
import 'package:lumify_notes/features/app/presentation/pages/unknown_page.dart'
    deferred as _i9;
import 'package:lumify_notes/features/authentication/presentation/pages/login_options_router_page.dart'
    deferred as _i4;
import 'package:lumify_notes/features/authentication/presentation/pages/login_router_page.dart'
    deferred as _i5;
import 'package:lumify_notes/features/notebook/presentation/create_notebook_dialog_box.dart'
    deferred as _i3;
import 'package:lumify_notes/features/notebook/presentation/pages/notebook_page.dart'
    deferred as _i7;
import 'package:lumify_notes/features/notebook/presentation/pages/select_notebook_page.dart'
    deferred as _i8;
import 'package:lumify_notes/features/notes/presentation/create_note_dialog_box.dart'
    deferred as _i2;
import 'package:lumify_notes/features/notes/presentation/pages/note_page.dart'
    deferred as _i6;

abstract class $AppRouter extends _i10.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i10.PageFactory> pagesMap = {
    AppHomeRoute.name: (routeData) {
      final args = routeData.argsAs<AppHomeRouteArgs>(
          orElse: () => const AppHomeRouteArgs());
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i10.DeferredWidget(
          _i1.loadLibrary,
          () => _i10.WrappedRoute(child: _i1.AppHomePage(key: args.key)),
        ),
      );
    },
    CreateNoteDialogRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i10.DeferredWidget(
          _i2.loadLibrary,
          () => _i2.CreateNoteDialogBox(),
        ),
      );
    },
    CreateNotebookDialogRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i10.DeferredWidget(
          _i3.loadLibrary,
          () => _i3.CreateNotebookDialogBox(),
        ),
      );
    },
    LoginOptionsRouter.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i10.DeferredWidget(
          _i4.loadLibrary,
          () => _i4.LoginOptionsRouterPage(),
        ),
      );
    },
    LoginRouter.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i10.DeferredWidget(
          _i5.loadLibrary,
          () => _i5.LoginRouterPage(),
        ),
      );
    },
    NoteRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i10.DeferredWidget(
          _i6.loadLibrary,
          () => _i6.NotePage(),
        ),
      );
    },
    NotebookRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i10.DeferredWidget(
          _i7.loadLibrary,
          () => _i7.NotebookPage(),
        ),
      );
    },
    SelectNotebookRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i10.DeferredWidget(
          _i8.loadLibrary,
          () => _i8.SelectNotebookPage(),
        ),
      );
    },
    UnknownRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i10.DeferredWidget(
          _i9.loadLibrary,
          () => _i9.UnknownPage(),
        ),
      );
    },
  };
}

/// generated route for
/// [_i1.AppHomePage]
class AppHomeRoute extends _i10.PageRouteInfo<AppHomeRouteArgs> {
  AppHomeRoute({
    _i11.Key? key,
    List<_i10.PageRouteInfo>? children,
  }) : super(
          AppHomeRoute.name,
          args: AppHomeRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'AppHomeRoute';

  static const _i10.PageInfo<AppHomeRouteArgs> page =
      _i10.PageInfo<AppHomeRouteArgs>(name);
}

class AppHomeRouteArgs {
  const AppHomeRouteArgs({this.key});

  final _i11.Key? key;

  @override
  String toString() {
    return 'AppHomeRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i2.CreateNoteDialogBox]
class CreateNoteDialogRoute extends _i10.PageRouteInfo<void> {
  const CreateNoteDialogRoute({List<_i10.PageRouteInfo>? children})
      : super(
          CreateNoteDialogRoute.name,
          initialChildren: children,
        );

  static const String name = 'CreateNoteDialogRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i3.CreateNotebookDialogBox]
class CreateNotebookDialogRoute extends _i10.PageRouteInfo<void> {
  const CreateNotebookDialogRoute({List<_i10.PageRouteInfo>? children})
      : super(
          CreateNotebookDialogRoute.name,
          initialChildren: children,
        );

  static const String name = 'CreateNotebookDialogRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i4.LoginOptionsRouterPage]
class LoginOptionsRouter extends _i10.PageRouteInfo<void> {
  const LoginOptionsRouter({List<_i10.PageRouteInfo>? children})
      : super(
          LoginOptionsRouter.name,
          initialChildren: children,
        );

  static const String name = 'LoginOptionsRouter';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i5.LoginRouterPage]
class LoginRouter extends _i10.PageRouteInfo<void> {
  const LoginRouter({List<_i10.PageRouteInfo>? children})
      : super(
          LoginRouter.name,
          initialChildren: children,
        );

  static const String name = 'LoginRouter';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i6.NotePage]
class NoteRoute extends _i10.PageRouteInfo<void> {
  const NoteRoute({List<_i10.PageRouteInfo>? children})
      : super(
          NoteRoute.name,
          initialChildren: children,
        );

  static const String name = 'NoteRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i7.NotebookPage]
class NotebookRoute extends _i10.PageRouteInfo<void> {
  const NotebookRoute({List<_i10.PageRouteInfo>? children})
      : super(
          NotebookRoute.name,
          initialChildren: children,
        );

  static const String name = 'NotebookRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i8.SelectNotebookPage]
class SelectNotebookRoute extends _i10.PageRouteInfo<void> {
  const SelectNotebookRoute({List<_i10.PageRouteInfo>? children})
      : super(
          SelectNotebookRoute.name,
          initialChildren: children,
        );

  static const String name = 'SelectNotebookRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i9.UnknownPage]
class UnknownRoute extends _i10.PageRouteInfo<void> {
  const UnknownRoute({List<_i10.PageRouteInfo>? children})
      : super(
          UnknownRoute.name,
          initialChildren: children,
        );

  static const String name = 'UnknownRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}
