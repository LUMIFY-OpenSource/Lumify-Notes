
import 'package:freezed_annotation/freezed_annotation.dart';

@freezed
class NoteBook with _$NoteBook{
  const factory NoteBook({
    @JsonKey(name: '_id') required String id,
    required String name,
    @JsonKey(includeIfNull: false) String? email,
    @JsonKey(includeIfNull: false) String? profilePicture,
  }) = _NoteBook;
}
factory NoteBook.fromJson(Map<String, dynamic> json) =>
_$NoteBookFromJson(json);
