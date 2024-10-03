// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notebook_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NoteBookImpl _$$NoteBookImplFromJson(Map<String, dynamic> json) =>
    _$NoteBookImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      color: json['color'] as String,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      emoji: json['emoji'] as String?,
    );

Map<String, dynamic> _$$NoteBookImplToJson(_$NoteBookImpl instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'name': instance.name,
    'color': instance.color,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('createdAt', instance.createdAt?.toIso8601String());
  writeNotNull('updatedAt', instance.updatedAt?.toIso8601String());
  writeNotNull('emoji', instance.emoji);
  return val;
}
