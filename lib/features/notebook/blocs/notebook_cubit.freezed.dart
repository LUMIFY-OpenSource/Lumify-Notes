// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notebook_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NotebookState _$NotebookStateFromJson(Map<String, dynamic> json) {
  return _NotebookState.fromJson(json);
}

/// @nodoc
mixin _$NotebookState {
  List<NoteBook> get notebooks => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NotebookStateCopyWith<NotebookState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotebookStateCopyWith<$Res> {
  factory $NotebookStateCopyWith(
          NotebookState value, $Res Function(NotebookState) then) =
      _$NotebookStateCopyWithImpl<$Res, NotebookState>;
  @useResult
  $Res call({List<NoteBook> notebooks});
}

/// @nodoc
class _$NotebookStateCopyWithImpl<$Res, $Val extends NotebookState>
    implements $NotebookStateCopyWith<$Res> {
  _$NotebookStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notebooks = null,
  }) {
    return _then(_value.copyWith(
      notebooks: null == notebooks
          ? _value.notebooks
          : notebooks // ignore: cast_nullable_to_non_nullable
              as List<NoteBook>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NotebookStateImplCopyWith<$Res>
    implements $NotebookStateCopyWith<$Res> {
  factory _$$NotebookStateImplCopyWith(
          _$NotebookStateImpl value, $Res Function(_$NotebookStateImpl) then) =
      __$$NotebookStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<NoteBook> notebooks});
}

/// @nodoc
class __$$NotebookStateImplCopyWithImpl<$Res>
    extends _$NotebookStateCopyWithImpl<$Res, _$NotebookStateImpl>
    implements _$$NotebookStateImplCopyWith<$Res> {
  __$$NotebookStateImplCopyWithImpl(
      _$NotebookStateImpl _value, $Res Function(_$NotebookStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notebooks = null,
  }) {
    return _then(_$NotebookStateImpl(
      notebooks: null == notebooks
          ? _value._notebooks
          : notebooks // ignore: cast_nullable_to_non_nullable
              as List<NoteBook>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NotebookStateImpl implements _NotebookState {
  const _$NotebookStateImpl({final List<NoteBook> notebooks = const []})
      : _notebooks = notebooks;

  factory _$NotebookStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotebookStateImplFromJson(json);

  final List<NoteBook> _notebooks;
  @override
  @JsonKey()
  List<NoteBook> get notebooks {
    if (_notebooks is EqualUnmodifiableListView) return _notebooks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_notebooks);
  }

  @override
  String toString() {
    return 'NotebookState(notebooks: $notebooks)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotebookStateImpl &&
            const DeepCollectionEquality()
                .equals(other._notebooks, _notebooks));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_notebooks));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NotebookStateImplCopyWith<_$NotebookStateImpl> get copyWith =>
      __$$NotebookStateImplCopyWithImpl<_$NotebookStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NotebookStateImplToJson(
      this,
    );
  }
}

abstract class _NotebookState implements NotebookState {
  const factory _NotebookState({final List<NoteBook> notebooks}) =
      _$NotebookStateImpl;

  factory _NotebookState.fromJson(Map<String, dynamic> json) =
      _$NotebookStateImpl.fromJson;

  @override
  List<NoteBook> get notebooks;
  @override
  @JsonKey(ignore: true)
  _$$NotebookStateImplCopyWith<_$NotebookStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
