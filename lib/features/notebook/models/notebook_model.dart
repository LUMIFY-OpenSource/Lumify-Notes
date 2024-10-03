import 'package:freezed_annotation/freezed_annotation.dart';

part 'notebook_model.freezed.dart';

part 'notebook_model.g.dart';

@freezed
class NoteBook with _$NoteBook {
  const factory NoteBook({
    @JsonKey(name: '_id') required String id,
    required String name,
    required String color,
    @JsonKey(includeIfNull: false) DateTime? createdAt,
    @JsonKey(includeIfNull: false) DateTime? updatedAt,
    @JsonKey(includeIfNull: false) String? emoji,
  }) = _NoteBook;

  factory NoteBook.fromJson(Map<String, dynamic> json) =>
      _$NoteBookFromJson(json);
}
