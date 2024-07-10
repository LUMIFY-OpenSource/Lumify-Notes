import 'package:flutter/material.dart';

import '../../../configurations/theme/size_constants.dart';

class CreateNotebookDialogBox extends StatelessWidget {
  const CreateNotebookDialogBox({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final Color dialogBoxColor = Theme.of(context).colorScheme.onPrimary;
    return Dialog(
      backgroundColor: dialogBoxColor,
      child: Padding(
        padding: const EdgeInsets.all(kPadding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Notebook Name",
                style: theme.textTheme.labelMedium
                    ?.copyWith(color: theme.colorScheme.primary),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(kPadding),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Enter notebook name",
                  hintStyle: TextStyle(
                      color: Theme.of(context).colorScheme.outline,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                "EmojiTag",
                style: theme.textTheme.labelMedium
                    ?.copyWith(color: theme.colorScheme.primary),
              ),
            ),
            // TODO: Add emoji picker
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Select color",
                style: theme.textTheme.labelMedium
                    ?.copyWith(color: theme.colorScheme.primary),
              ),
            ),
            // TODO: Add color picker
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {},
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    "Save",
                    style: theme.textTheme.bodyMedium
                        ?.copyWith(color: theme.colorScheme.primary),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
