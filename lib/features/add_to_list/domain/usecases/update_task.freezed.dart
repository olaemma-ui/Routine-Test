// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_task.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$UpdateTaskParams {
  String get taskId => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  bool? get isDone => throw _privateConstructorUsedError;
  int? get position => throw _privateConstructorUsedError;

  /// Create a copy of UpdateTaskParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateTaskParamsCopyWith<UpdateTaskParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateTaskParamsCopyWith<$Res> {
  factory $UpdateTaskParamsCopyWith(
    UpdateTaskParams value,
    $Res Function(UpdateTaskParams) then,
  ) = _$UpdateTaskParamsCopyWithImpl<$Res, UpdateTaskParams>;
  @useResult
  $Res call({String taskId, String? title, bool? isDone, int? position});
}

/// @nodoc
class _$UpdateTaskParamsCopyWithImpl<$Res, $Val extends UpdateTaskParams>
    implements $UpdateTaskParamsCopyWith<$Res> {
  _$UpdateTaskParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateTaskParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskId = null,
    Object? title = freezed,
    Object? isDone = freezed,
    Object? position = freezed,
  }) {
    return _then(
      _value.copyWith(
            taskId: null == taskId
                ? _value.taskId
                : taskId // ignore: cast_nullable_to_non_nullable
                      as String,
            title: freezed == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String?,
            isDone: freezed == isDone
                ? _value.isDone
                : isDone // ignore: cast_nullable_to_non_nullable
                      as bool?,
            position: freezed == position
                ? _value.position
                : position // ignore: cast_nullable_to_non_nullable
                      as int?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$UpdateTaskParamsImplCopyWith<$Res>
    implements $UpdateTaskParamsCopyWith<$Res> {
  factory _$$UpdateTaskParamsImplCopyWith(
    _$UpdateTaskParamsImpl value,
    $Res Function(_$UpdateTaskParamsImpl) then,
  ) = __$$UpdateTaskParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String taskId, String? title, bool? isDone, int? position});
}

/// @nodoc
class __$$UpdateTaskParamsImplCopyWithImpl<$Res>
    extends _$UpdateTaskParamsCopyWithImpl<$Res, _$UpdateTaskParamsImpl>
    implements _$$UpdateTaskParamsImplCopyWith<$Res> {
  __$$UpdateTaskParamsImplCopyWithImpl(
    _$UpdateTaskParamsImpl _value,
    $Res Function(_$UpdateTaskParamsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UpdateTaskParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskId = null,
    Object? title = freezed,
    Object? isDone = freezed,
    Object? position = freezed,
  }) {
    return _then(
      _$UpdateTaskParamsImpl(
        taskId: null == taskId
            ? _value.taskId
            : taskId // ignore: cast_nullable_to_non_nullable
                  as String,
        title: freezed == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String?,
        isDone: freezed == isDone
            ? _value.isDone
            : isDone // ignore: cast_nullable_to_non_nullable
                  as bool?,
        position: freezed == position
            ? _value.position
            : position // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}

/// @nodoc

class _$UpdateTaskParamsImpl implements _UpdateTaskParams {
  _$UpdateTaskParamsImpl({
    required this.taskId,
    this.title,
    this.isDone,
    this.position,
  });

  @override
  final String taskId;
  @override
  final String? title;
  @override
  final bool? isDone;
  @override
  final int? position;

  @override
  String toString() {
    return 'UpdateTaskParams(taskId: $taskId, title: $title, isDone: $isDone, position: $position)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateTaskParamsImpl &&
            (identical(other.taskId, taskId) || other.taskId == taskId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.isDone, isDone) || other.isDone == isDone) &&
            (identical(other.position, position) ||
                other.position == position));
  }

  @override
  int get hashCode => Object.hash(runtimeType, taskId, title, isDone, position);

  /// Create a copy of UpdateTaskParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateTaskParamsImplCopyWith<_$UpdateTaskParamsImpl> get copyWith =>
      __$$UpdateTaskParamsImplCopyWithImpl<_$UpdateTaskParamsImpl>(
        this,
        _$identity,
      );
}

abstract class _UpdateTaskParams implements UpdateTaskParams {
  factory _UpdateTaskParams({
    required final String taskId,
    final String? title,
    final bool? isDone,
    final int? position,
  }) = _$UpdateTaskParamsImpl;

  @override
  String get taskId;
  @override
  String? get title;
  @override
  bool? get isDone;
  @override
  int? get position;

  /// Create a copy of UpdateTaskParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateTaskParamsImplCopyWith<_$UpdateTaskParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
