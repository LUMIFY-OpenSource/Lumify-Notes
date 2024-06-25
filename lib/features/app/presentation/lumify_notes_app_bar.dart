import 'package:flutter/material.dart';

import '../../../configurations/configurations.dart';

class LumifyNotesAppBar extends StatelessWidget implements PreferredSizeWidget {
  const LumifyNotesAppBar({
    super.key,
    this.appBarTitleText,
    this.appBarTitleWidget,
    this.actions,
    required this.centerTitle,
    this.elevation,
  });

  final String? appBarTitleText;
  final Widget? appBarTitleWidget;

  final List<Widget>? actions;
  final bool centerTitle;
  final double? elevation;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.all(kPadding),
      child: AppBar(
        backgroundColor: Colors.white,
        leadingWidth: kPadding * 6,
        elevation: elevation,
        centerTitle: centerTitle,
        leading: AutoLeadingButton(
          color: theme.primaryColor,
        ),
        title: appBarTitleText != null
            ? Text(
                appBarTitleText!,
                style: theme.textTheme.headlineSmall?.copyWith(
                  color: theme.primaryColor,
                  // fontFamily: kBrandFontFamily,
                  fontWeight: FontWeight.w500,
                ),
              )
            : appBarTitleWidget,
        actions: actions,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kPadding * 8);
}
