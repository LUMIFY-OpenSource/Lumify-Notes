import 'package:freezed_annotation/freezed_annotation.dart';

part 'notebook_model.freezed.dart';

part 'notebook_model.g.dart';
//ignore_for_file: invalid_annotation_target

@freezed
class NoteBook with _$NoteBook {
  const factory NoteBook({
    required String noteBookId,
    required String name,
    required int color,
    @JsonKey(includeIfNull: false) DateTime? createdAt,
    @JsonKey(includeIfNull: false) DateTime? updatedAt,
    @JsonKey(includeIfNull: false) String? emoji,
  }) = _NoteBook;

  factory NoteBook.fromJson(Map<String, dynamic> json) =>
      _$NoteBookFromJson(json);
}
