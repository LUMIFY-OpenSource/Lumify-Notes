import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/note_cubit.dart';
import '../models/note_model.dart';

class SingleNoteCard extends StatelessWidget {
  final Note note;

  const SingleNoteCard({super.key, required this.note});

  @override
  Widget build(BuildContext context) {
    final noteCubit = context.watch<NoteCubit>(); // Watch the cubit for changes
    final isSelectModeEnabled = noteCubit.state.selectModeEnabled;
    return Center(
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 179,
                width: 156,
                decoration: BoxDecoration(
                  color: Color(note.color),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              const SizedBox(height: 8),
              Text(
                note.name,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ],
          ),
          if (isSelectModeEnabled)
            Positioned(
              top: 0.2,
              left: 0.2,
              child: Checkbox(
                fillColor: WidgetStateProperty.all(Colors.white),
                checkColor: Colors.black,
                value: noteCubit.state.selectedNoteIds.contains(note.noteId) ? true : false,
                onChanged: (bool? value) {
                  noteCubit.toggleNoteSelection(note.noteId, value ?? false);
                },
              ),
            ),
        ],
      ),
    );
  }
}
