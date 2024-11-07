import 'package:freezed_annotation/freezed_annotation.dart';

part 'note_model.freezed.dart';

part 'note_model.g.dart';

//ignore_for_file: invalid_annotation_target
@freezed
class Note with _$Note {
  const factory Note({
    required String noteId,
    String? noteBookId,
    required String name,
    required int color,
    @JsonKey(includeIfNull: false) DateTime? createdAt,
    @JsonKey(includeIfNull: false) DateTime? updatedAt,
  }) = _Note;

  factory Note.fromJson(Map<String, dynamic> json) => _$NoteFromJson(json);
}
