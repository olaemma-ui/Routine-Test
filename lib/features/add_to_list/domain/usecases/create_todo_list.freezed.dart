// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_todo_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$CreateTodoListParams {
  String get title => throw _privateConstructorUsedError;

  /// Create a copy of CreateTodoListParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateTodoListParamsCopyWith<CreateTodoListParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateTodoListParamsCopyWith<$Res> {
  factory $CreateTodoListParamsCopyWith(
    CreateTodoListParams value,
    $Res Function(CreateTodoListParams) then,
  ) = _$CreateTodoListParamsCopyWithImpl<$Res, CreateTodoListParams>;
  @useResult
  $Res call({String title});
}

/// @nodoc
class _$CreateTodoListParamsCopyWithImpl<
  $Res,
  $Val extends CreateTodoListParams
>
    implements $CreateTodoListParamsCopyWith<$Res> {
  _$CreateTodoListParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateTodoListParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? title = null}) {
    return _then(
      _value.copyWith(
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
abstract class _$$CreateTodoListParamsImplCopyWith<$Res>
    implements $CreateTodoListParamsCopyWith<$Res> {
  factory _$$CreateTodoListParamsImplCopyWith(
    _$CreateTodoListParamsImpl value,
    $Res Function(_$CreateTodoListParamsImpl) then,
  ) = __$$CreateTodoListParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title});
}

/// @nodoc
class __$$CreateTodoListParamsImplCopyWithImpl<$Res>
    extends _$CreateTodoListParamsCopyWithImpl<$Res, _$CreateTodoListParamsImpl>
    implements _$$CreateTodoListParamsImplCopyWith<$Res> {
  __$$CreateTodoListParamsImplCopyWithImpl(
    _$CreateTodoListParamsImpl _value,
    $Res Function(_$CreateTodoListParamsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CreateTodoListParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? title = null}) {
    return _then(
      _$CreateTodoListParamsImpl(
        title: null == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$CreateTodoListParamsImpl implements _CreateTodoListParams {
  _$CreateTodoListParamsImpl({required this.title});

  @override
  final String title;

  @override
  String toString() {
    return 'CreateTodoListParams(title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateTodoListParamsImpl &&
            (identical(other.title, title) || other.title == title));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title);

  /// Create a copy of CreateTodoListParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateTodoListParamsImplCopyWith<_$CreateTodoListParamsImpl>
  get copyWith =>
      __$$CreateTodoListParamsImplCopyWithImpl<_$CreateTodoListParamsImpl>(
        this,
        _$identity,
      );
}

abstract class _CreateTodoListParams implements CreateTodoListParams {
  factory _CreateTodoListParams({required final String title}) =
      _$CreateTodoListParamsImpl;

  @override
  String get title;

  /// Create a copy of CreateTodoListParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateTodoListParamsImplCopyWith<_$CreateTodoListParamsImpl>
  get copyWith => throw _privateConstructorUsedError;
}
