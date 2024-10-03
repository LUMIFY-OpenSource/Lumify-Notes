import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lumify_notes/configurations/configurations.dart';
import 'package:lumify_notes/features/notes/blocs/note_cubit.dart';
import 'package:lumify_notes/features/notes/presentation/single_note_card.dart';

class NotesGridView extends StatelessWidget {
  const NotesGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NoteCubit, NoteState>(
      builder: (context, state) {
        final notes = state.notes;
        return GridView.builder(
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: kPadding * 0.11,
            crossAxisSpacing: 5,
            mainAxisSpacing: 10,
          ),
          itemCount: notes.length,
          itemBuilder: (context, index) {
            return SingleNoteCard(
              note: notes[index],
            );
          },
        );
      },
    );
  }
}
