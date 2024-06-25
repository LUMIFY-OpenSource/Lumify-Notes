import 'package:flutter/material.dart';

import '../../../../configurations/configurations.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(kPadding * 2.5),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text('Coming Soon!')]),
      ),
    );
  }
}
