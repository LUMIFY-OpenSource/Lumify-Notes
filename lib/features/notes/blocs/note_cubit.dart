import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:lumify_notes/features/notebook/models/notebook_model.dart';
import 'package:uuid/uuid.dart';

import '../models/note_model.dart';

part 'note_cubit.freezed.dart';

part 'note_cubit.g.dart';

@freezed
class NoteState with _$NoteState {
  const factory NoteState({
    @Default([]) List<Note> notes,
    @Default(false) final bool selectModeEnabled,
  }) = _NoteState;

  factory NoteState.fromJson(Map<String, dynamic> json) =>
      _$NoteStateFromJson(json);
}

class NoteCubit extends HydratedCubit<NoteState> {
  NoteCubit() : super(const NoteState());

  void createNote(String noteName, int color) {
    const uuid = Uuid();
    final note = Note(
        noteId: uuid.v1(),
        name: noteName,
        color: color,
        createdAt: DateTime.now());
    final availableNotes = List<Note>.from(state.notes);
    availableNotes.add(note);
    emit(state.copyWith(notes: availableNotes));
  }
  void assignNotebookIdToNote(String noteBookId, String noteId){
    final availableNotes = List<Note>.from(state.notes);
    final note = availableNotes.firstWhere((n) => n.noteId == noteId);
    final updatedNote = note.copyWith(noteBookId: noteBookId);
    availableNotes.removeWhere((n) => n.noteId == noteId);
    availableNotes.insert(0, updatedNote);
    emit(state.copyWith(notes: availableNotes));
  }
  void toggleSelectModeEnabled(){
    emit(state.copyWith(selectModeEnabled: !state.selectModeEnabled));
  }

  @override
  NoteState? fromJson(Map<String, dynamic> json) {
   return NoteState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(NoteState state) {
   return state.toJson();
  }
}
