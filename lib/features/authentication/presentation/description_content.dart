import 'package:djangoflow_app/djangoflow_app.dart';
import 'package:lumify_notes/configurations/configurations.dart';
import 'package:flutter/material.dart';

class DescriptionContent extends StatelessWidget {
  const DescriptionContent({super.key, required this.tagline, this.verticalPadding = kPadding * 4});

  final String tagline;
  final double verticalPadding;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: kPadding * 4,
        vertical: verticalPadding,
      ),
      child: Column(
        children: [
          const SizedBox(
            height: kPadding * 2,
          ),
          GestureDetector(
            onLongPress: () {
              AppCubit.instance.toggleEnvironment();
            },
            child: Text(
              kAppBarTitle,
              textAlign: TextAlign.center,
              style: textTheme.headlineLarge?.copyWith(
                color: theme.colorScheme.primary,
                fontFamily: 'Quando',
              ),
            ),
          ),
          const SizedBox(
            height: kPadding * 1.5,
          ),
          Text(
            tagline,
            textAlign: TextAlign.center,
            style: textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
