import 'dart:async';

import 'package:djangoflow_app/djangoflow_app.dart';
import 'package:djangoflow_app_links/djangoflow_app_links.dart';
import 'package:flutter/foundation.dart';
import 'package:djangoflow_app/djangoflow_app.dart' as df_app;

import 'configurations/configurations.dart';
import 'notes_app_builder.dart';
import 'utils/utils.dart';

Future<void> main() async {
  // Runs the runApp method
  DjangoflowAppRunner.run(
    onException: (exception, stackTrace) {
      debugPrint('Exception Caught -- $exception');
      DjangoflowAppSnackbar.showError(
        ExceptionFormatter.format(exception),
      );
    },
    rootWidgetBuilder: (appBuilder) async{
      String? initialDeepLink;
      final appLinksRepository = AppLinksRepository();

      if (!kIsWeb) {
        initialDeepLink = (await appLinksRepository.getInitialLink())?.path;
      }

      // initialize router
      final router = AppRouter();

      return appBuilder(
        LumifyNotesAppBuilder(
          appRouter: router,
          initialDeepLink: initialDeepLink,
          appLinksRepository: appLinksRepository,
        ),
      );
    },
  );
}
