import 'package:flutter/material.dart';
import 'package:lumify_notes/configurations/configurations.dart';
import 'package:lumify_notes/features/notebook/presentation/single_notebook_card.dart';

class _NoteData {
  final String title;
  final Color color;
  final String? emoji;

  const _NoteData({
    required this.title,
    required this.color,
    this.emoji,
  });
}

final dummyData = List.generate(
  8,
  (index) => _NoteData(
    title: 'Notebook $index',
    color: Colors.primaries[index % Colors.primaries.length],
    emoji: '😂',
  ),
);

class NotebookGridView extends StatelessWidget {
  const NotebookGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: kPadding * 0.11,
        crossAxisSpacing: 5,
        mainAxisSpacing: 10,
      ),
      itemCount: dummyData.length,
      itemBuilder: (context, index) {
        return SingleNotebookCard(
          title: dummyData[index].title,
          color: dummyData[index].color,
          emoji: dummyData[index].emoji,
        );
      },
    );
  }
}
