// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notebook_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NoteBook _$NoteBookFromJson(Map<String, dynamic> json) {
  return _NoteBook.fromJson(json);
}

/// @nodoc
mixin _$NoteBook {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get color => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  String? get emoji => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NoteBookCopyWith<NoteBook> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteBookCopyWith<$Res> {
  factory $NoteBookCopyWith(NoteBook value, $Res Function(NoteBook) then) =
      _$NoteBookCopyWithImpl<$Res, NoteBook>;
  @useResult
  $Res call(
      {String id,
      String name,
      String color,
      @JsonKey(includeIfNull: false) DateTime? createdAt,
      @JsonKey(includeIfNull: false) DateTime? updatedAt,
      @JsonKey(includeIfNull: false) String? emoji});
}

/// @nodoc
class _$NoteBookCopyWithImpl<$Res, $Val extends NoteBook>
    implements $NoteBookCopyWith<$Res> {
  _$NoteBookCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? color = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? emoji = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      emoji: freezed == emoji
          ? _value.emoji
          : emoji // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NoteBookImplCopyWith<$Res>
    implements $NoteBookCopyWith<$Res> {
  factory _$$NoteBookImplCopyWith(
          _$NoteBookImpl value, $Res Function(_$NoteBookImpl) then) =
      __$$NoteBookImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String color,
      @JsonKey(includeIfNull: false) DateTime? createdAt,
      @JsonKey(includeIfNull: false) DateTime? updatedAt,
      @JsonKey(includeIfNull: false) String? emoji});
}

/// @nodoc
class __$$NoteBookImplCopyWithImpl<$Res>
    extends _$NoteBookCopyWithImpl<$Res, _$NoteBookImpl>
    implements _$$NoteBookImplCopyWith<$Res> {
  __$$NoteBookImplCopyWithImpl(
      _$NoteBookImpl _value, $Res Function(_$NoteBookImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? color = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? emoji = freezed,
  }) {
    return _then(_$NoteBookImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      emoji: freezed == emoji
          ? _value.emoji
          : emoji // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NoteBookImpl implements _NoteBook {
  const _$NoteBookImpl(
      {required this.id,
      required this.name,
      required this.color,
      @JsonKey(includeIfNull: false) this.createdAt,
      @JsonKey(includeIfNull: false) this.updatedAt,
      @JsonKey(includeIfNull: false) this.emoji});

  factory _$NoteBookImpl.fromJson(Map<String, dynamic> json) =>
      _$$NoteBookImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String color;
  @override
  @JsonKey(includeIfNull: false)
  final DateTime? createdAt;
  @override
  @JsonKey(includeIfNull: false)
  final DateTime? updatedAt;
  @override
  @JsonKey(includeIfNull: false)
  final String? emoji;

  @override
  String toString() {
    return 'NoteBook(id: $id, name: $name, color: $color, createdAt: $createdAt, updatedAt: $updatedAt, emoji: $emoji)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoteBookImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.emoji, emoji) || other.emoji == emoji));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, color, createdAt, updatedAt, emoji);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NoteBookImplCopyWith<_$NoteBookImpl> get copyWith =>
      __$$NoteBookImplCopyWithImpl<_$NoteBookImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NoteBookImplToJson(
      this,
    );
  }
}

abstract class _NoteBook implements NoteBook {
  const factory _NoteBook(
      {required final String id,
      required final String name,
      required final String color,
      @JsonKey(includeIfNull: false) final DateTime? createdAt,
      @JsonKey(includeIfNull: false) final DateTime? updatedAt,
      @JsonKey(includeIfNull: false) final String? emoji}) = _$NoteBookImpl;

  factory _NoteBook.fromJson(Map<String, dynamic> json) =
      _$NoteBookImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get color;
  @override
  @JsonKey(includeIfNull: false)
  DateTime? get createdAt;
  @override
  @JsonKey(includeIfNull: false)
  DateTime? get updatedAt;
  @override
  @JsonKey(includeIfNull: false)
  String? get emoji;
  @override
  @JsonKey(ignore: true)
  _$$NoteBookImplCopyWith<_$NoteBookImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
