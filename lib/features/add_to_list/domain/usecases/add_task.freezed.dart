// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_task.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$AddTaskParams {
  String get listId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;

  /// Create a copy of AddTaskParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddTaskParamsCopyWith<AddTaskParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddTaskParamsCopyWith<$Res> {
  factory $AddTaskParamsCopyWith(
    AddTaskParams value,
    $Res Function(AddTaskParams) then,
  ) = _$AddTaskParamsCopyWithImpl<$Res, AddTaskParams>;
  @useResult
  $Res call({String listId, String title});
}

/// @nodoc
class _$AddTaskParamsCopyWithImpl<$Res, $Val extends AddTaskParams>
    implements $AddTaskParamsCopyWith<$Res> {
  _$AddTaskParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddTaskParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? listId = null, Object? title = null}) {
    return _then(
      _value.copyWith(
            listId: null == listId
                ? _value.listId
                : listId // ignore: cast_nullable_to_non_nullable
                      as String,
            title: null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AddTaskParamsImplCopyWith<$Res>
    implements $AddTaskParamsCopyWith<$Res> {
  factory _$$AddTaskParamsImplCopyWith(
    _$AddTaskParamsImpl value,
    $Res Function(_$AddTaskParamsImpl) then,
  ) = __$$AddTaskParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String listId, String title});
}

/// @nodoc
class __$$AddTaskParamsImplCopyWithImpl<$Res>
    extends _$AddTaskParamsCopyWithImpl<$Res, _$AddTaskParamsImpl>
    implements _$$AddTaskParamsImplCopyWith<$Res> {
  __$$AddTaskParamsImplCopyWithImpl(
    _$AddTaskParamsImpl _value,
    $Res Function(_$AddTaskParamsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AddTaskParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? listId = null, Object? title = null}) {
    return _then(
      _$AddTaskParamsImpl(
        listId: null == listId
            ? _value.listId
            : listId // ignore: cast_nullable_to_non_nullable
                  as String,
        title: null == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$AddTaskParamsImpl implements _AddTaskParams {
  _$AddTaskParamsImpl({required this.listId, required this.title});

  @override
  final String listId;
  @override
  final String title;

  @override
  String toString() {
    return 'AddTaskParams(listId: $listId, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddTaskParamsImpl &&
            (identical(other.listId, listId) || other.listId == listId) &&
            (identical(other.title, title) || other.title == title));
  }

  @override
  int get hashCode => Object.hash(runtimeType, listId, title);

  /// Create a copy of AddTaskParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddTaskParamsImplCopyWith<_$AddTaskParamsImpl> get copyWith =>
      __$$AddTaskParamsImplCopyWithImpl<_$AddTaskParamsImpl>(this, _$identity);
}

abstract class _AddTaskParams implements AddTaskParams {
  factory _AddTaskParams({
    required final String listId,
    required final String title,
  }) = _$AddTaskParamsImpl;

  @override
  String get listId;
  @override
  String get title;

  /// Create a copy of AddTaskParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddTaskParamsImplCopyWith<_$AddTaskParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
