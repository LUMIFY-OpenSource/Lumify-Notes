import 'package:flutter/material.dart';
import 'package:lumify_notes/configurations/configurations.dart';

class _NoteData {
  final String title;
  final Color color;

  const _NoteData({
    required this.title,
    required this.color,
  });
}

final dummyData = List.generate(
  8,
  (index) => _NoteData(
    title: 'Note $index',
    color: Colors.primaries[index % Colors.primaries.length],
  ),
);

class NotesGridView extends StatelessWidget {
  const NotesGridView({super.key});

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
        return const Offstage();
        //   SingleNotebookCard(
        //   title: dummyData[index].title,
        //   color: dummyData[index].color,
        // );
      },
    );
  }
}
