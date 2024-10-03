// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notebook_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NotebookStateImpl _$$NotebookStateImplFromJson(Map<String, dynamic> json) =>
    _$NotebookStateImpl(
      notebooks: (json['notebooks'] as List<dynamic>?)
              ?.map((e) => NoteBook.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$NotebookStateImplToJson(_$NotebookStateImpl instance) =>
    <String, dynamic>{
      'notebooks': instance.notebooks,
    };
