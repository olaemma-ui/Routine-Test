// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_task.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$DeleteTaskParams {
  String get taskId => throw _privateConstructorUsedError;

  /// Create a copy of DeleteTaskParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeleteTaskParamsCopyWith<DeleteTaskParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteTaskParamsCopyWith<$Res> {
  factory $DeleteTaskParamsCopyWith(
    DeleteTaskParams value,
    $Res Function(DeleteTaskParams) then,
  ) = _$DeleteTaskParamsCopyWithImpl<$Res, DeleteTaskParams>;
  @useResult
  $Res call({String taskId});
}

/// @nodoc
class _$DeleteTaskParamsCopyWithImpl<$Res, $Val extends DeleteTaskParams>
    implements $DeleteTaskParamsCopyWith<$Res> {
  _$DeleteTaskParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeleteTaskParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? taskId = null}) {
    return _then(
      _value.copyWith(
            taskId: null == taskId
                ? _value.taskId
                : taskId // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DeleteTaskParamsImplCopyWith<$Res>
    implements $DeleteTaskParamsCopyWith<$Res> {
  factory _$$DeleteTaskParamsImplCopyWith(
    _$DeleteTaskParamsImpl value,
    $Res Function(_$DeleteTaskParamsImpl) then,
  ) = __$$DeleteTaskParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String taskId});
}

/// @nodoc
class __$$DeleteTaskParamsImplCopyWithImpl<$Res>
    extends _$DeleteTaskParamsCopyWithImpl<$Res, _$DeleteTaskParamsImpl>
    implements _$$DeleteTaskParamsImplCopyWith<$Res> {
  __$$DeleteTaskParamsImplCopyWithImpl(
    _$DeleteTaskParamsImpl _value,
    $Res Function(_$DeleteTaskParamsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DeleteTaskParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? taskId = null}) {
    return _then(
      _$DeleteTaskParamsImpl(
        taskId: null == taskId
            ? _value.taskId
            : taskId // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$DeleteTaskParamsImpl implements _DeleteTaskParams {
  _$DeleteTaskParamsImpl({required this.taskId});

  @override
  final String taskId;

  @override
  String toString() {
    return 'DeleteTaskParams(taskId: $taskId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteTaskParamsImpl &&
            (identical(other.taskId, taskId) || other.taskId == taskId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, taskId);

  /// Create a copy of DeleteTaskParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteTaskParamsImplCopyWith<_$DeleteTaskParamsImpl> get copyWith =>
      __$$DeleteTaskParamsImplCopyWithImpl<_$DeleteTaskParamsImpl>(
        this,
        _$identity,
      );
}

abstract class _DeleteTaskParams implements DeleteTaskParams {
  factory _DeleteTaskParams({required final String taskId}) =
      _$DeleteTaskParamsImpl;

  @override
  String get taskId;

  /// Create a copy of DeleteTaskParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteTaskParamsImplCopyWith<_$DeleteTaskParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
