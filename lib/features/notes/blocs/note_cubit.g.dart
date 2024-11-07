// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NoteStateImpl _$$NoteStateImplFromJson(Map<String, dynamic> json) =>
    _$NoteStateImpl(
      notes: (json['notes'] as List<dynamic>?)
              ?.map((e) => Note.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      selectModeEnabled: json['selectModeEnabled'] as bool? ?? false,
      selectedNoteIds: (json['selectedNoteIds'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$NoteStateImplToJson(_$NoteStateImpl instance) =>
    <String, dynamic>{
      'notes': instance.notes,
      'selectModeEnabled': instance.selectModeEnabled,
      'selectedNoteIds': instance.selectedNoteIds,
    };
