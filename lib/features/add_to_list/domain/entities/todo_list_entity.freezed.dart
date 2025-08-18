// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo_list_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$TodoListEntity {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  List<TaskEntity>? get tasks => throw _privateConstructorUsedError;

  /// Create a copy of TodoListEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TodoListEntityCopyWith<TodoListEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoListEntityCopyWith<$Res> {
  factory $TodoListEntityCopyWith(
    TodoListEntity value,
    $Res Function(TodoListEntity) then,
  ) = _$TodoListEntityCopyWithImpl<$Res, TodoListEntity>;
  @useResult
  $Res call({String id, String title, List<TaskEntity>? tasks});
}

/// @nodoc
class _$TodoListEntityCopyWithImpl<$Res, $Val extends TodoListEntity>
    implements $TodoListEntityCopyWith<$Res> {
  _$TodoListEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TodoListEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? tasks = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            title: null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String,
            tasks: freezed == tasks
                ? _value.tasks
                : tasks // ignore: cast_nullable_to_non_nullable
                      as List<TaskEntity>?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$TodoListEntityImplCopyWith<$Res>
    implements $TodoListEntityCopyWith<$Res> {
  factory _$$TodoListEntityImplCopyWith(
    _$TodoListEntityImpl value,
    $Res Function(_$TodoListEntityImpl) then,
  ) = __$$TodoListEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String title, List<TaskEntity>? tasks});
}

/// @nodoc
class __$$TodoListEntityImplCopyWithImpl<$Res>
    extends _$TodoListEntityCopyWithImpl<$Res, _$TodoListEntityImpl>
    implements _$$TodoListEntityImplCopyWith<$Res> {
  __$$TodoListEntityImplCopyWithImpl(
    _$TodoListEntityImpl _value,
    $Res Function(_$TodoListEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TodoListEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? tasks = freezed,
  }) {
    return _then(
      _$TodoListEntityImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        title: null == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
        tasks: freezed == tasks
            ? _value._tasks
            : tasks // ignore: cast_nullable_to_non_nullable
                  as List<TaskEntity>?,
      ),
    );
  }
}

/// @nodoc

class _$TodoListEntityImpl implements _TodoListEntity {
  const _$TodoListEntityImpl({
    required this.id,
    required this.title,
    final List<TaskEntity>? tasks,
  }) : _tasks = tasks;

  @override
  final String id;
  @override
  final String title;
  final List<TaskEntity>? _tasks;
  @override
  List<TaskEntity>? get tasks {
    final value = _tasks;
    if (value == null) return null;
    if (_tasks is EqualUnmodifiableListView) return _tasks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'TodoListEntity(id: $id, title: $title, tasks: $tasks)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodoListEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(other._tasks, _tasks));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    title,
    const DeepCollectionEquality().hash(_tasks),
  );

  /// Create a copy of TodoListEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TodoListEntityImplCopyWith<_$TodoListEntityImpl> get copyWith =>
      __$$TodoListEntityImplCopyWithImpl<_$TodoListEntityImpl>(
        this,
        _$identity,
      );
}

abstract class _TodoListEntity implements TodoListEntity {
  const factory _TodoListEntity({
    required final String id,
    required final String title,
    final List<TaskEntity>? tasks,
  }) = _$TodoListEntityImpl;

  @override
  String get id;
  @override
  String get title;
  @override
  List<TaskEntity>? get tasks;

  /// Create a copy of TodoListEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TodoListEntityImplCopyWith<_$TodoListEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
