import 'package:emoji_picker_flutter/emoji_picker_flutter.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lumify_notes/configurations/configurations.dart';

import '../blocs/notebook_cubit.dart';

@RoutePage(
  name: 'CreateNotebookDialogRoute'
)
class CreateNotebookDialogBox extends StatefulWidget {
  const CreateNotebookDialogBox({super.key});

  @override
  State<CreateNotebookDialogBox> createState() => _CreateNotebookDialogBoxState();
}

class _CreateNotebookDialogBoxState extends State<CreateNotebookDialogBox> {
  TextEditingController nameController = TextEditingController();
  String? pickedEmoji;
  Color pickedColor = notebookPredefinedColors[0];

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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: GestureDetector(
                child: const Icon(
                  Icons.cancel_outlined,
                  //TODO: Add color
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ),
            Text(
              "Notebook Name",
              style: theme.textTheme.labelMedium?.copyWith(color: theme.colorScheme.primary),
            ),
            Padding(
              padding: const EdgeInsets.all(kPadding),
              child: TextField(
                style: const TextStyle(color: Colors.black),
                controller: nameController,
                decoration: InputDecoration(
                  hintText: "Enter notebook name",
                  hintStyle: TextStyle(color: Theme.of(context).colorScheme.outline, fontWeight: FontWeight.w400),
                ),
              ),
            ),
            const SizedBox(height: kPadding),
            Row(children: [
              Text(
                "EmojiTag",
                style: theme.textTheme.labelMedium?.copyWith(color: theme.colorScheme.primary),
              ),
              const Spacer(),
              GestureDetector(
                onTap: () async {
                  final pickedEmoji = await showDialog(context: context, builder: (_) => const _EmojiPickerDialog());

                  if (pickedEmoji != null) {
                    setState(() {
                      this.pickedEmoji = pickedEmoji;
                    });
                  }
                },
                child: Text(pickedEmoji ?? '🙂'),
              ),
            ]),
            const SizedBox(height: kPadding),
            Text(
              "Select color",
              style: theme.textTheme.labelMedium?.copyWith(color: theme.colorScheme.primary),
            ),
            SizedBox(
              height: kPadding * 5,
              child: ListView.builder(
                itemCount: notebookPredefinedColors.length,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  final color = notebookPredefinedColors[index];
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          pickedColor = color;
                        });
                      },
                      child: Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: color,
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: pickedColor == color ? Colors.black : Colors.transparent,
                            width: 2,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(kPadding),
              child: GestureDetector(
                onTap: () {
                  context.read<NotebookCubit>().createNotebook(nameController.text, pickedColor.value, pickedEmoji);
                  context.router.maybePop();
                },
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    "Save",
                    style: theme.textTheme.bodyMedium?.copyWith(color: theme.colorScheme.primary),
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

class _EmojiPickerDialog extends StatelessWidget {
  const _EmojiPickerDialog();

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          EmojiPicker(
            onEmojiSelected: (category, emoji) {
              Navigator.pop(context, emoji.emoji);
            },
            config: Config(
              checkPlatformCompatibility: true,
              emojiViewConfig: EmojiViewConfig(
                emojiSizeMax: 28 * (defaultTargetPlatform == TargetPlatform.iOS ? 1.20 : 0.9),
              ),
              swapCategoryAndBottomBar: true,
              skinToneConfig: const SkinToneConfig(),
              categoryViewConfig: const CategoryViewConfig(),
              bottomActionBarConfig: const BottomActionBarConfig(),
            ),
          ),
        ],
      ),
    );
  }
}
