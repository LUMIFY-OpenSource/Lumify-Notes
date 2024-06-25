// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image_picker_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ImagePickerState _$ImagePickerStateFromJson(Map<String, dynamic> json) {
  return _ImagePickerState.fromJson(json);
}

/// @nodoc
mixin _$ImagePickerState {
  String? get pickedImagePath => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImagePickerStateCopyWith<ImagePickerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImagePickerStateCopyWith<$Res> {
  factory $ImagePickerStateCopyWith(
          ImagePickerState value, $Res Function(ImagePickerState) then) =
      _$ImagePickerStateCopyWithImpl<$Res, ImagePickerState>;
  @useResult
  $Res call({String? pickedImagePath});
}

/// @nodoc
class _$ImagePickerStateCopyWithImpl<$Res, $Val extends ImagePickerState>
    implements $ImagePickerStateCopyWith<$Res> {
  _$ImagePickerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pickedImagePath = freezed,
  }) {
    return _then(_value.copyWith(
      pickedImagePath: freezed == pickedImagePath
          ? _value.pickedImagePath
          : pickedImagePath // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ImagePickerStateImplCopyWith<$Res>
    implements $ImagePickerStateCopyWith<$Res> {
  factory _$$ImagePickerStateImplCopyWith(_$ImagePickerStateImpl value,
          $Res Function(_$ImagePickerStateImpl) then) =
      __$$ImagePickerStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? pickedImagePath});
}

/// @nodoc
class __$$ImagePickerStateImplCopyWithImpl<$Res>
    extends _$ImagePickerStateCopyWithImpl<$Res, _$ImagePickerStateImpl>
    implements _$$ImagePickerStateImplCopyWith<$Res> {
  __$$ImagePickerStateImplCopyWithImpl(_$ImagePickerStateImpl _value,
      $Res Function(_$ImagePickerStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pickedImagePath = freezed,
  }) {
    return _then(_$ImagePickerStateImpl(
      pickedImagePath: freezed == pickedImagePath
          ? _value.pickedImagePath
          : pickedImagePath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ImagePickerStateImpl implements _ImagePickerState {
  const _$ImagePickerStateImpl({this.pickedImagePath});

  factory _$ImagePickerStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImagePickerStateImplFromJson(json);

  @override
  final String? pickedImagePath;

  @override
  String toString() {
    return 'ImagePickerState(pickedImagePath: $pickedImagePath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImagePickerStateImpl &&
            (identical(other.pickedImagePath, pickedImagePath) ||
                other.pickedImagePath == pickedImagePath));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, pickedImagePath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ImagePickerStateImplCopyWith<_$ImagePickerStateImpl> get copyWith =>
      __$$ImagePickerStateImplCopyWithImpl<_$ImagePickerStateImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImagePickerStateImplToJson(
      this,
    );
  }
}

abstract class _ImagePickerState implements ImagePickerState {
  const factory _ImagePickerState({final String? pickedImagePath}) =
      _$ImagePickerStateImpl;

  factory _ImagePickerState.fromJson(Map<String, dynamic> json) =
      _$ImagePickerStateImpl.fromJson;

  @override
  String? get pickedImagePath;
  @override
  @JsonKey(ignore: true)
  _$$ImagePickerStateImplCopyWith<_$ImagePickerStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
