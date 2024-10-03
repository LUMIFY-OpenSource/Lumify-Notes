import 'package:freezed_annotation/freezed_annotation.dart';

part 'note_model.freezed.dart';
part 'note_model.g.dart';
@freezed
class Note with _$Note{
  const factory Note({
    required String noteId,
    required String noteBookId,
    required String name,
    required String color,
    @JsonKey(includeIfNull: false) DateTime? createdAt,
    @JsonKey(includeIfNull: false) DateTime? updatedAt,

}) = _Note;
factory Note.fromJson(Map<String, dynamic> json) =>
_$NoteFromJson(json);
}