import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lumify_notes/features/notebook/models/notebook_model.dart';
import 'package:uuid/uuid.dart';

part 'notebook_cubit.freezed.dart';
part 'notebook_cubit.g.dart';

@freezed
class NotebookState with _$NotebookState {
  const factory NotebookState({
    @Default([]) List<NoteBook> notebooks,
  }) = _NotebookState;

  factory NotebookState.fromJson(Map<String, dynamic> json) => _$NotebookStateFromJson(json);
}

class NotebookCubit extends Cubit<NotebookState> {
  NotebookCubit() : super(const NotebookState());

  void createNotebook(String notebookName, int color, String? emoji){
    const uuid = Uuid();
    final notebook = NoteBook(noteBookId: uuid.v1(),name: notebookName,color: color,emoji: emoji,createdAt: DateTime.now());
    final availableNotebooks = List<NoteBook>.from(state.notebooks);
    availableNotebooks.add(notebook);
    emit(state.copyWith(notebooks: availableNotebooks));
  }

}