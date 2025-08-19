// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$TodoEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchLists,
    required TResult Function(String listId) fetchTasks,
    required TResult Function(String title) createList,
    required TResult Function(String listId, String title) updateTodoList,
    required TResult Function(String listId, String title, String listTitle)
    addTask,
    required TResult Function(String taskId, String listId, bool isDone)
    toggleTask,
    required TResult Function(String taskId, String listId) deleteTask,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchLists,
    TResult? Function(String listId)? fetchTasks,
    TResult? Function(String title)? createList,
    TResult? Function(String listId, String title)? updateTodoList,
    TResult? Function(String listId, String title, String listTitle)? addTask,
    TResult? Function(String taskId, String listId, bool isDone)? toggleTask,
    TResult? Function(String taskId, String listId)? deleteTask,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchLists,
    TResult Function(String listId)? fetchTasks,
    TResult Function(String title)? createList,
    TResult Function(String listId, String title)? updateTodoList,
    TResult Function(String listId, String title, String listTitle)? addTask,
    TResult Function(String taskId, String listId, bool isDone)? toggleTask,
    TResult Function(String taskId, String listId)? deleteTask,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchLists value) fetchLists,
    required TResult Function(_FetchTasks value) fetchTasks,
    required TResult Function(_CreateList value) createList,
    required TResult Function(_UpdateTodoList value) updateTodoList,
    required TResult Function(_AddTask value) addTask,
    required TResult Function(_ToggleTask value) toggleTask,
    required TResult Function(_DeleteTask value) deleteTask,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchLists value)? fetchLists,
    TResult? Function(_FetchTasks value)? fetchTasks,
    TResult? Function(_CreateList value)? createList,
    TResult? Function(_UpdateTodoList value)? updateTodoList,
    TResult? Function(_AddTask value)? addTask,
    TResult? Function(_ToggleTask value)? toggleTask,
    TResult? Function(_DeleteTask value)? deleteTask,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchLists value)? fetchLists,
    TResult Function(_FetchTasks value)? fetchTasks,
    TResult Function(_CreateList value)? createList,
    TResult Function(_UpdateTodoList value)? updateTodoList,
    TResult Function(_AddTask value)? addTask,
    TResult Function(_ToggleTask value)? toggleTask,
    TResult Function(_DeleteTask value)? deleteTask,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoEventCopyWith<$Res> {
  factory $TodoEventCopyWith(TodoEvent value, $Res Function(TodoEvent) then) =
      _$TodoEventCopyWithImpl<$Res, TodoEvent>;
}

/// @nodoc
class _$TodoEventCopyWithImpl<$Res, $Val extends TodoEvent>
    implements $TodoEventCopyWith<$Res> {
  _$TodoEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TodoEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$FetchListsImplCopyWith<$Res> {
  factory _$$FetchListsImplCopyWith(
    _$FetchListsImpl value,
    $Res Function(_$FetchListsImpl) then,
  ) = __$$FetchListsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchListsImplCopyWithImpl<$Res>
    extends _$TodoEventCopyWithImpl<$Res, _$FetchListsImpl>
    implements _$$FetchListsImplCopyWith<$Res> {
  __$$FetchListsImplCopyWithImpl(
    _$FetchListsImpl _value,
    $Res Function(_$FetchListsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TodoEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchListsImpl implements _FetchLists {
  const _$FetchListsImpl();

  @override
  String toString() {
    return 'TodoEvent.fetchLists()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchListsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchLists,
    required TResult Function(String listId) fetchTasks,
    required TResult Function(String title) createList,
    required TResult Function(String listId, String title) updateTodoList,
    required TResult Function(String listId, String title, String listTitle)
    addTask,
    required TResult Function(String taskId, String listId, bool isDone)
    toggleTask,
    required TResult Function(String taskId, String listId) deleteTask,
  }) {
    return fetchLists();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchLists,
    TResult? Function(String listId)? fetchTasks,
    TResult? Function(String title)? createList,
    TResult? Function(String listId, String title)? updateTodoList,
    TResult? Function(String listId, String title, String listTitle)? addTask,
    TResult? Function(String taskId, String listId, bool isDone)? toggleTask,
    TResult? Function(String taskId, String listId)? deleteTask,
  }) {
    return fetchLists?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchLists,
    TResult Function(String listId)? fetchTasks,
    TResult Function(String title)? createList,
    TResult Function(String listId, String title)? updateTodoList,
    TResult Function(String listId, String title, String listTitle)? addTask,
    TResult Function(String taskId, String listId, bool isDone)? toggleTask,
    TResult Function(String taskId, String listId)? deleteTask,
    required TResult orElse(),
  }) {
    if (fetchLists != null) {
      return fetchLists();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchLists value) fetchLists,
    required TResult Function(_FetchTasks value) fetchTasks,
    required TResult Function(_CreateList value) createList,
    required TResult Function(_UpdateTodoList value) updateTodoList,
    required TResult Function(_AddTask value) addTask,
    required TResult Function(_ToggleTask value) toggleTask,
    required TResult Function(_DeleteTask value) deleteTask,
  }) {
    return fetchLists(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchLists value)? fetchLists,
    TResult? Function(_FetchTasks value)? fetchTasks,
    TResult? Function(_CreateList value)? createList,
    TResult? Function(_UpdateTodoList value)? updateTodoList,
    TResult? Function(_AddTask value)? addTask,
    TResult? Function(_ToggleTask value)? toggleTask,
    TResult? Function(_DeleteTask value)? deleteTask,
  }) {
    return fetchLists?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchLists value)? fetchLists,
    TResult Function(_FetchTasks value)? fetchTasks,
    TResult Function(_CreateList value)? createList,
    TResult Function(_UpdateTodoList value)? updateTodoList,
    TResult Function(_AddTask value)? addTask,
    TResult Function(_ToggleTask value)? toggleTask,
    TResult Function(_DeleteTask value)? deleteTask,
    required TResult orElse(),
  }) {
    if (fetchLists != null) {
      return fetchLists(this);
    }
    return orElse();
  }
}

abstract class _FetchLists implements TodoEvent {
  const factory _FetchLists() = _$FetchListsImpl;
}

/// @nodoc
abstract class _$$FetchTasksImplCopyWith<$Res> {
  factory _$$FetchTasksImplCopyWith(
    _$FetchTasksImpl value,
    $Res Function(_$FetchTasksImpl) then,
  ) = __$$FetchTasksImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String listId});
}

/// @nodoc
class __$$FetchTasksImplCopyWithImpl<$Res>
    extends _$TodoEventCopyWithImpl<$Res, _$FetchTasksImpl>
    implements _$$FetchTasksImplCopyWith<$Res> {
  __$$FetchTasksImplCopyWithImpl(
    _$FetchTasksImpl _value,
    $Res Function(_$FetchTasksImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TodoEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? listId = null}) {
    return _then(
      _$FetchTasksImpl(
        null == listId
            ? _value.listId
            : listId // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$FetchTasksImpl implements _FetchTasks {
  const _$FetchTasksImpl(this.listId);

  @override
  final String listId;

  @override
  String toString() {
    return 'TodoEvent.fetchTasks(listId: $listId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchTasksImpl &&
            (identical(other.listId, listId) || other.listId == listId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, listId);

  /// Create a copy of TodoEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchTasksImplCopyWith<_$FetchTasksImpl> get copyWith =>
      __$$FetchTasksImplCopyWithImpl<_$FetchTasksImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchLists,
    required TResult Function(String listId) fetchTasks,
    required TResult Function(String title) createList,
    required TResult Function(String listId, String title) updateTodoList,
    required TResult Function(String listId, String title, String listTitle)
    addTask,
    required TResult Function(String taskId, String listId, bool isDone)
    toggleTask,
    required TResult Function(String taskId, String listId) deleteTask,
  }) {
    return fetchTasks(listId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchLists,
    TResult? Function(String listId)? fetchTasks,
    TResult? Function(String title)? createList,
    TResult? Function(String listId, String title)? updateTodoList,
    TResult? Function(String listId, String title, String listTitle)? addTask,
    TResult? Function(String taskId, String listId, bool isDone)? toggleTask,
    TResult? Function(String taskId, String listId)? deleteTask,
  }) {
    return fetchTasks?.call(listId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchLists,
    TResult Function(String listId)? fetchTasks,
    TResult Function(String title)? createList,
    TResult Function(String listId, String title)? updateTodoList,
    TResult Function(String listId, String title, String listTitle)? addTask,
    TResult Function(String taskId, String listId, bool isDone)? toggleTask,
    TResult Function(String taskId, String listId)? deleteTask,
    required TResult orElse(),
  }) {
    if (fetchTasks != null) {
      return fetchTasks(listId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchLists value) fetchLists,
    required TResult Function(_FetchTasks value) fetchTasks,
    required TResult Function(_CreateList value) createList,
    required TResult Function(_UpdateTodoList value) updateTodoList,
    required TResult Function(_AddTask value) addTask,
    required TResult Function(_ToggleTask value) toggleTask,
    required TResult Function(_DeleteTask value) deleteTask,
  }) {
    return fetchTasks(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchLists value)? fetchLists,
    TResult? Function(_FetchTasks value)? fetchTasks,
    TResult? Function(_CreateList value)? createList,
    TResult? Function(_UpdateTodoList value)? updateTodoList,
    TResult? Function(_AddTask value)? addTask,
    TResult? Function(_ToggleTask value)? toggleTask,
    TResult? Function(_DeleteTask value)? deleteTask,
  }) {
    return fetchTasks?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchLists value)? fetchLists,
    TResult Function(_FetchTasks value)? fetchTasks,
    TResult Function(_CreateList value)? createList,
    TResult Function(_UpdateTodoList value)? updateTodoList,
    TResult Function(_AddTask value)? addTask,
    TResult Function(_ToggleTask value)? toggleTask,
    TResult Function(_DeleteTask value)? deleteTask,
    required TResult orElse(),
  }) {
    if (fetchTasks != null) {
      return fetchTasks(this);
    }
    return orElse();
  }
}

abstract class _FetchTasks implements TodoEvent {
  const factory _FetchTasks(final String listId) = _$FetchTasksImpl;

  String get listId;

  /// Create a copy of TodoEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchTasksImplCopyWith<_$FetchTasksImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateListImplCopyWith<$Res> {
  factory _$$CreateListImplCopyWith(
    _$CreateListImpl value,
    $Res Function(_$CreateListImpl) then,
  ) = __$$CreateListImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String title});
}

/// @nodoc
class __$$CreateListImplCopyWithImpl<$Res>
    extends _$TodoEventCopyWithImpl<$Res, _$CreateListImpl>
    implements _$$CreateListImplCopyWith<$Res> {
  __$$CreateListImplCopyWithImpl(
    _$CreateListImpl _value,
    $Res Function(_$CreateListImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TodoEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? title = null}) {
    return _then(
      _$CreateListImpl(
        null == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$CreateListImpl implements _CreateList {
  const _$CreateListImpl(this.title);

  @override
  final String title;

  @override
  String toString() {
    return 'TodoEvent.createList(title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateListImpl &&
            (identical(other.title, title) || other.title == title));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title);

  /// Create a copy of TodoEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateListImplCopyWith<_$CreateListImpl> get copyWith =>
      __$$CreateListImplCopyWithImpl<_$CreateListImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchLists,
    required TResult Function(String listId) fetchTasks,
    required TResult Function(String title) createList,
    required TResult Function(String listId, String title) updateTodoList,
    required TResult Function(String listId, String title, String listTitle)
    addTask,
    required TResult Function(String taskId, String listId, bool isDone)
    toggleTask,
    required TResult Function(String taskId, String listId) deleteTask,
  }) {
    return createList(title);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchLists,
    TResult? Function(String listId)? fetchTasks,
    TResult? Function(String title)? createList,
    TResult? Function(String listId, String title)? updateTodoList,
    TResult? Function(String listId, String title, String listTitle)? addTask,
    TResult? Function(String taskId, String listId, bool isDone)? toggleTask,
    TResult? Function(String taskId, String listId)? deleteTask,
  }) {
    return createList?.call(title);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchLists,
    TResult Function(String listId)? fetchTasks,
    TResult Function(String title)? createList,
    TResult Function(String listId, String title)? updateTodoList,
    TResult Function(String listId, String title, String listTitle)? addTask,
    TResult Function(String taskId, String listId, bool isDone)? toggleTask,
    TResult Function(String taskId, String listId)? deleteTask,
    required TResult orElse(),
  }) {
    if (createList != null) {
      return createList(title);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchLists value) fetchLists,
    required TResult Function(_FetchTasks value) fetchTasks,
    required TResult Function(_CreateList value) createList,
    required TResult Function(_UpdateTodoList value) updateTodoList,
    required TResult Function(_AddTask value) addTask,
    required TResult Function(_ToggleTask value) toggleTask,
    required TResult Function(_DeleteTask value) deleteTask,
  }) {
    return createList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchLists value)? fetchLists,
    TResult? Function(_FetchTasks value)? fetchTasks,
    TResult? Function(_CreateList value)? createList,
    TResult? Function(_UpdateTodoList value)? updateTodoList,
    TResult? Function(_AddTask value)? addTask,
    TResult? Function(_ToggleTask value)? toggleTask,
    TResult? Function(_DeleteTask value)? deleteTask,
  }) {
    return createList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchLists value)? fetchLists,
    TResult Function(_FetchTasks value)? fetchTasks,
    TResult Function(_CreateList value)? createList,
    TResult Function(_UpdateTodoList value)? updateTodoList,
    TResult Function(_AddTask value)? addTask,
    TResult Function(_ToggleTask value)? toggleTask,
    TResult Function(_DeleteTask value)? deleteTask,
    required TResult orElse(),
  }) {
    if (createList != null) {
      return createList(this);
    }
    return orElse();
  }
}

abstract class _CreateList implements TodoEvent {
  const factory _CreateList(final String title) = _$CreateListImpl;

  String get title;

  /// Create a copy of TodoEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateListImplCopyWith<_$CreateListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateTodoListImplCopyWith<$Res> {
  factory _$$UpdateTodoListImplCopyWith(
    _$UpdateTodoListImpl value,
    $Res Function(_$UpdateTodoListImpl) then,
  ) = __$$UpdateTodoListImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String listId, String title});
}

/// @nodoc
class __$$UpdateTodoListImplCopyWithImpl<$Res>
    extends _$TodoEventCopyWithImpl<$Res, _$UpdateTodoListImpl>
    implements _$$UpdateTodoListImplCopyWith<$Res> {
  __$$UpdateTodoListImplCopyWithImpl(
    _$UpdateTodoListImpl _value,
    $Res Function(_$UpdateTodoListImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TodoEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? listId = null, Object? title = null}) {
    return _then(
      _$UpdateTodoListImpl(
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

class _$UpdateTodoListImpl implements _UpdateTodoList {
  const _$UpdateTodoListImpl({required this.listId, required this.title});

  @override
  final String listId;
  @override
  final String title;

  @override
  String toString() {
    return 'TodoEvent.updateTodoList(listId: $listId, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateTodoListImpl &&
            (identical(other.listId, listId) || other.listId == listId) &&
            (identical(other.title, title) || other.title == title));
  }

  @override
  int get hashCode => Object.hash(runtimeType, listId, title);

  /// Create a copy of TodoEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateTodoListImplCopyWith<_$UpdateTodoListImpl> get copyWith =>
      __$$UpdateTodoListImplCopyWithImpl<_$UpdateTodoListImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchLists,
    required TResult Function(String listId) fetchTasks,
    required TResult Function(String title) createList,
    required TResult Function(String listId, String title) updateTodoList,
    required TResult Function(String listId, String title, String listTitle)
    addTask,
    required TResult Function(String taskId, String listId, bool isDone)
    toggleTask,
    required TResult Function(String taskId, String listId) deleteTask,
  }) {
    return updateTodoList(listId, title);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchLists,
    TResult? Function(String listId)? fetchTasks,
    TResult? Function(String title)? createList,
    TResult? Function(String listId, String title)? updateTodoList,
    TResult? Function(String listId, String title, String listTitle)? addTask,
    TResult? Function(String taskId, String listId, bool isDone)? toggleTask,
    TResult? Function(String taskId, String listId)? deleteTask,
  }) {
    return updateTodoList?.call(listId, title);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchLists,
    TResult Function(String listId)? fetchTasks,
    TResult Function(String title)? createList,
    TResult Function(String listId, String title)? updateTodoList,
    TResult Function(String listId, String title, String listTitle)? addTask,
    TResult Function(String taskId, String listId, bool isDone)? toggleTask,
    TResult Function(String taskId, String listId)? deleteTask,
    required TResult orElse(),
  }) {
    if (updateTodoList != null) {
      return updateTodoList(listId, title);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchLists value) fetchLists,
    required TResult Function(_FetchTasks value) fetchTasks,
    required TResult Function(_CreateList value) createList,
    required TResult Function(_UpdateTodoList value) updateTodoList,
    required TResult Function(_AddTask value) addTask,
    required TResult Function(_ToggleTask value) toggleTask,
    required TResult Function(_DeleteTask value) deleteTask,
  }) {
    return updateTodoList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchLists value)? fetchLists,
    TResult? Function(_FetchTasks value)? fetchTasks,
    TResult? Function(_CreateList value)? createList,
    TResult? Function(_UpdateTodoList value)? updateTodoList,
    TResult? Function(_AddTask value)? addTask,
    TResult? Function(_ToggleTask value)? toggleTask,
    TResult? Function(_DeleteTask value)? deleteTask,
  }) {
    return updateTodoList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchLists value)? fetchLists,
    TResult Function(_FetchTasks value)? fetchTasks,
    TResult Function(_CreateList value)? createList,
    TResult Function(_UpdateTodoList value)? updateTodoList,
    TResult Function(_AddTask value)? addTask,
    TResult Function(_ToggleTask value)? toggleTask,
    TResult Function(_DeleteTask value)? deleteTask,
    required TResult orElse(),
  }) {
    if (updateTodoList != null) {
      return updateTodoList(this);
    }
    return orElse();
  }
}

abstract class _UpdateTodoList implements TodoEvent {
  const factory _UpdateTodoList({
    required final String listId,
    required final String title,
  }) = _$UpdateTodoListImpl;

  String get listId;
  String get title;

  /// Create a copy of TodoEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateTodoListImplCopyWith<_$UpdateTodoListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddTaskImplCopyWith<$Res> {
  factory _$$AddTaskImplCopyWith(
    _$AddTaskImpl value,
    $Res Function(_$AddTaskImpl) then,
  ) = __$$AddTaskImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String listId, String title, String listTitle});
}

/// @nodoc
class __$$AddTaskImplCopyWithImpl<$Res>
    extends _$TodoEventCopyWithImpl<$Res, _$AddTaskImpl>
    implements _$$AddTaskImplCopyWith<$Res> {
  __$$AddTaskImplCopyWithImpl(
    _$AddTaskImpl _value,
    $Res Function(_$AddTaskImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TodoEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listId = null,
    Object? title = null,
    Object? listTitle = null,
  }) {
    return _then(
      _$AddTaskImpl(
        listId: null == listId
            ? _value.listId
            : listId // ignore: cast_nullable_to_non_nullable
                  as String,
        title: null == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
        listTitle: null == listTitle
            ? _value.listTitle
            : listTitle // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$AddTaskImpl implements _AddTask {
  const _$AddTaskImpl({
    required this.listId,
    required this.title,
    required this.listTitle,
  });

  @override
  final String listId;
  @override
  final String title;
  @override
  final String listTitle;

  @override
  String toString() {
    return 'TodoEvent.addTask(listId: $listId, title: $title, listTitle: $listTitle)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddTaskImpl &&
            (identical(other.listId, listId) || other.listId == listId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.listTitle, listTitle) ||
                other.listTitle == listTitle));
  }

  @override
  int get hashCode => Object.hash(runtimeType, listId, title, listTitle);

  /// Create a copy of TodoEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddTaskImplCopyWith<_$AddTaskImpl> get copyWith =>
      __$$AddTaskImplCopyWithImpl<_$AddTaskImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchLists,
    required TResult Function(String listId) fetchTasks,
    required TResult Function(String title) createList,
    required TResult Function(String listId, String title) updateTodoList,
    required TResult Function(String listId, String title, String listTitle)
    addTask,
    required TResult Function(String taskId, String listId, bool isDone)
    toggleTask,
    required TResult Function(String taskId, String listId) deleteTask,
  }) {
    return addTask(listId, title, listTitle);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchLists,
    TResult? Function(String listId)? fetchTasks,
    TResult? Function(String title)? createList,
    TResult? Function(String listId, String title)? updateTodoList,
    TResult? Function(String listId, String title, String listTitle)? addTask,
    TResult? Function(String taskId, String listId, bool isDone)? toggleTask,
    TResult? Function(String taskId, String listId)? deleteTask,
  }) {
    return addTask?.call(listId, title, listTitle);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchLists,
    TResult Function(String listId)? fetchTasks,
    TResult Function(String title)? createList,
    TResult Function(String listId, String title)? updateTodoList,
    TResult Function(String listId, String title, String listTitle)? addTask,
    TResult Function(String taskId, String listId, bool isDone)? toggleTask,
    TResult Function(String taskId, String listId)? deleteTask,
    required TResult orElse(),
  }) {
    if (addTask != null) {
      return addTask(listId, title, listTitle);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchLists value) fetchLists,
    required TResult Function(_FetchTasks value) fetchTasks,
    required TResult Function(_CreateList value) createList,
    required TResult Function(_UpdateTodoList value) updateTodoList,
    required TResult Function(_AddTask value) addTask,
    required TResult Function(_ToggleTask value) toggleTask,
    required TResult Function(_DeleteTask value) deleteTask,
  }) {
    return addTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchLists value)? fetchLists,
    TResult? Function(_FetchTasks value)? fetchTasks,
    TResult? Function(_CreateList value)? createList,
    TResult? Function(_UpdateTodoList value)? updateTodoList,
    TResult? Function(_AddTask value)? addTask,
    TResult? Function(_ToggleTask value)? toggleTask,
    TResult? Function(_DeleteTask value)? deleteTask,
  }) {
    return addTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchLists value)? fetchLists,
    TResult Function(_FetchTasks value)? fetchTasks,
    TResult Function(_CreateList value)? createList,
    TResult Function(_UpdateTodoList value)? updateTodoList,
    TResult Function(_AddTask value)? addTask,
    TResult Function(_ToggleTask value)? toggleTask,
    TResult Function(_DeleteTask value)? deleteTask,
    required TResult orElse(),
  }) {
    if (addTask != null) {
      return addTask(this);
    }
    return orElse();
  }
}

abstract class _AddTask implements TodoEvent {
  const factory _AddTask({
    required final String listId,
    required final String title,
    required final String listTitle,
  }) = _$AddTaskImpl;

  String get listId;
  String get title;
  String get listTitle;

  /// Create a copy of TodoEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddTaskImplCopyWith<_$AddTaskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ToggleTaskImplCopyWith<$Res> {
  factory _$$ToggleTaskImplCopyWith(
    _$ToggleTaskImpl value,
    $Res Function(_$ToggleTaskImpl) then,
  ) = __$$ToggleTaskImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String taskId, String listId, bool isDone});
}

/// @nodoc
class __$$ToggleTaskImplCopyWithImpl<$Res>
    extends _$TodoEventCopyWithImpl<$Res, _$ToggleTaskImpl>
    implements _$$ToggleTaskImplCopyWith<$Res> {
  __$$ToggleTaskImplCopyWithImpl(
    _$ToggleTaskImpl _value,
    $Res Function(_$ToggleTaskImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TodoEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskId = null,
    Object? listId = null,
    Object? isDone = null,
  }) {
    return _then(
      _$ToggleTaskImpl(
        taskId: null == taskId
            ? _value.taskId
            : taskId // ignore: cast_nullable_to_non_nullable
                  as String,
        listId: null == listId
            ? _value.listId
            : listId // ignore: cast_nullable_to_non_nullable
                  as String,
        isDone: null == isDone
            ? _value.isDone
            : isDone // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc

class _$ToggleTaskImpl implements _ToggleTask {
  const _$ToggleTaskImpl({
    required this.taskId,
    required this.listId,
    required this.isDone,
  });

  @override
  final String taskId;
  @override
  final String listId;
  @override
  final bool isDone;

  @override
  String toString() {
    return 'TodoEvent.toggleTask(taskId: $taskId, listId: $listId, isDone: $isDone)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToggleTaskImpl &&
            (identical(other.taskId, taskId) || other.taskId == taskId) &&
            (identical(other.listId, listId) || other.listId == listId) &&
            (identical(other.isDone, isDone) || other.isDone == isDone));
  }

  @override
  int get hashCode => Object.hash(runtimeType, taskId, listId, isDone);

  /// Create a copy of TodoEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ToggleTaskImplCopyWith<_$ToggleTaskImpl> get copyWith =>
      __$$ToggleTaskImplCopyWithImpl<_$ToggleTaskImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchLists,
    required TResult Function(String listId) fetchTasks,
    required TResult Function(String title) createList,
    required TResult Function(String listId, String title) updateTodoList,
    required TResult Function(String listId, String title, String listTitle)
    addTask,
    required TResult Function(String taskId, String listId, bool isDone)
    toggleTask,
    required TResult Function(String taskId, String listId) deleteTask,
  }) {
    return toggleTask(taskId, listId, isDone);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchLists,
    TResult? Function(String listId)? fetchTasks,
    TResult? Function(String title)? createList,
    TResult? Function(String listId, String title)? updateTodoList,
    TResult? Function(String listId, String title, String listTitle)? addTask,
    TResult? Function(String taskId, String listId, bool isDone)? toggleTask,
    TResult? Function(String taskId, String listId)? deleteTask,
  }) {
    return toggleTask?.call(taskId, listId, isDone);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchLists,
    TResult Function(String listId)? fetchTasks,
    TResult Function(String title)? createList,
    TResult Function(String listId, String title)? updateTodoList,
    TResult Function(String listId, String title, String listTitle)? addTask,
    TResult Function(String taskId, String listId, bool isDone)? toggleTask,
    TResult Function(String taskId, String listId)? deleteTask,
    required TResult orElse(),
  }) {
    if (toggleTask != null) {
      return toggleTask(taskId, listId, isDone);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchLists value) fetchLists,
    required TResult Function(_FetchTasks value) fetchTasks,
    required TResult Function(_CreateList value) createList,
    required TResult Function(_UpdateTodoList value) updateTodoList,
    required TResult Function(_AddTask value) addTask,
    required TResult Function(_ToggleTask value) toggleTask,
    required TResult Function(_DeleteTask value) deleteTask,
  }) {
    return toggleTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchLists value)? fetchLists,
    TResult? Function(_FetchTasks value)? fetchTasks,
    TResult? Function(_CreateList value)? createList,
    TResult? Function(_UpdateTodoList value)? updateTodoList,
    TResult? Function(_AddTask value)? addTask,
    TResult? Function(_ToggleTask value)? toggleTask,
    TResult? Function(_DeleteTask value)? deleteTask,
  }) {
    return toggleTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchLists value)? fetchLists,
    TResult Function(_FetchTasks value)? fetchTasks,
    TResult Function(_CreateList value)? createList,
    TResult Function(_UpdateTodoList value)? updateTodoList,
    TResult Function(_AddTask value)? addTask,
    TResult Function(_ToggleTask value)? toggleTask,
    TResult Function(_DeleteTask value)? deleteTask,
    required TResult orElse(),
  }) {
    if (toggleTask != null) {
      return toggleTask(this);
    }
    return orElse();
  }
}

abstract class _ToggleTask implements TodoEvent {
  const factory _ToggleTask({
    required final String taskId,
    required final String listId,
    required final bool isDone,
  }) = _$ToggleTaskImpl;

  String get taskId;
  String get listId;
  bool get isDone;

  /// Create a copy of TodoEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ToggleTaskImplCopyWith<_$ToggleTaskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteTaskImplCopyWith<$Res> {
  factory _$$DeleteTaskImplCopyWith(
    _$DeleteTaskImpl value,
    $Res Function(_$DeleteTaskImpl) then,
  ) = __$$DeleteTaskImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String taskId, String listId});
}

/// @nodoc
class __$$DeleteTaskImplCopyWithImpl<$Res>
    extends _$TodoEventCopyWithImpl<$Res, _$DeleteTaskImpl>
    implements _$$DeleteTaskImplCopyWith<$Res> {
  __$$DeleteTaskImplCopyWithImpl(
    _$DeleteTaskImpl _value,
    $Res Function(_$DeleteTaskImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TodoEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? taskId = null, Object? listId = null}) {
    return _then(
      _$DeleteTaskImpl(
        null == taskId
            ? _value.taskId
            : taskId // ignore: cast_nullable_to_non_nullable
                  as String,
        null == listId
            ? _value.listId
            : listId // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$DeleteTaskImpl implements _DeleteTask {
  const _$DeleteTaskImpl(this.taskId, this.listId);

  @override
  final String taskId;
  @override
  final String listId;

  @override
  String toString() {
    return 'TodoEvent.deleteTask(taskId: $taskId, listId: $listId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteTaskImpl &&
            (identical(other.taskId, taskId) || other.taskId == taskId) &&
            (identical(other.listId, listId) || other.listId == listId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, taskId, listId);

  /// Create a copy of TodoEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteTaskImplCopyWith<_$DeleteTaskImpl> get copyWith =>
      __$$DeleteTaskImplCopyWithImpl<_$DeleteTaskImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchLists,
    required TResult Function(String listId) fetchTasks,
    required TResult Function(String title) createList,
    required TResult Function(String listId, String title) updateTodoList,
    required TResult Function(String listId, String title, String listTitle)
    addTask,
    required TResult Function(String taskId, String listId, bool isDone)
    toggleTask,
    required TResult Function(String taskId, String listId) deleteTask,
  }) {
    return deleteTask(taskId, listId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchLists,
    TResult? Function(String listId)? fetchTasks,
    TResult? Function(String title)? createList,
    TResult? Function(String listId, String title)? updateTodoList,
    TResult? Function(String listId, String title, String listTitle)? addTask,
    TResult? Function(String taskId, String listId, bool isDone)? toggleTask,
    TResult? Function(String taskId, String listId)? deleteTask,
  }) {
    return deleteTask?.call(taskId, listId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchLists,
    TResult Function(String listId)? fetchTasks,
    TResult Function(String title)? createList,
    TResult Function(String listId, String title)? updateTodoList,
    TResult Function(String listId, String title, String listTitle)? addTask,
    TResult Function(String taskId, String listId, bool isDone)? toggleTask,
    TResult Function(String taskId, String listId)? deleteTask,
    required TResult orElse(),
  }) {
    if (deleteTask != null) {
      return deleteTask(taskId, listId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchLists value) fetchLists,
    required TResult Function(_FetchTasks value) fetchTasks,
    required TResult Function(_CreateList value) createList,
    required TResult Function(_UpdateTodoList value) updateTodoList,
    required TResult Function(_AddTask value) addTask,
    required TResult Function(_ToggleTask value) toggleTask,
    required TResult Function(_DeleteTask value) deleteTask,
  }) {
    return deleteTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchLists value)? fetchLists,
    TResult? Function(_FetchTasks value)? fetchTasks,
    TResult? Function(_CreateList value)? createList,
    TResult? Function(_UpdateTodoList value)? updateTodoList,
    TResult? Function(_AddTask value)? addTask,
    TResult? Function(_ToggleTask value)? toggleTask,
    TResult? Function(_DeleteTask value)? deleteTask,
  }) {
    return deleteTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchLists value)? fetchLists,
    TResult Function(_FetchTasks value)? fetchTasks,
    TResult Function(_CreateList value)? createList,
    TResult Function(_UpdateTodoList value)? updateTodoList,
    TResult Function(_AddTask value)? addTask,
    TResult Function(_ToggleTask value)? toggleTask,
    TResult Function(_DeleteTask value)? deleteTask,
    required TResult orElse(),
  }) {
    if (deleteTask != null) {
      return deleteTask(this);
    }
    return orElse();
  }
}

abstract class _DeleteTask implements TodoEvent {
  const factory _DeleteTask(final String taskId, final String listId) =
      _$DeleteTaskImpl;

  String get taskId;
  String get listId;

  /// Create a copy of TodoEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteTaskImplCopyWith<_$DeleteTaskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TodoState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
      List<TodoListEntity>? lists,
      List<TaskEntity>? taskEntityList,
      String? error,
    )
    loaded,
    required TResult Function(String message) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
      List<TodoListEntity>? lists,
      List<TaskEntity>? taskEntityList,
      String? error,
    )?
    loaded,
    TResult? Function(String message)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
      List<TodoListEntity>? lists,
      List<TaskEntity>? taskEntityList,
      String? error,
    )?
    loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoStateCopyWith<$Res> {
  factory $TodoStateCopyWith(TodoState value, $Res Function(TodoState) then) =
      _$TodoStateCopyWithImpl<$Res, TodoState>;
}

/// @nodoc
class _$TodoStateCopyWithImpl<$Res, $Val extends TodoState>
    implements $TodoStateCopyWith<$Res> {
  _$TodoStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TodoState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
    _$InitialImpl value,
    $Res Function(_$InitialImpl) then,
  ) = __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$TodoStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
    _$InitialImpl _value,
    $Res Function(_$InitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TodoState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'TodoState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
      List<TodoListEntity>? lists,
      List<TaskEntity>? taskEntityList,
      String? error,
    )
    loaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
      List<TodoListEntity>? lists,
      List<TaskEntity>? taskEntityList,
      String? error,
    )?
    loaded,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
      List<TodoListEntity>? lists,
      List<TaskEntity>? taskEntityList,
      String? error,
    )?
    loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements TodoState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
    _$LoadingImpl value,
    $Res Function(_$LoadingImpl) then,
  ) = __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$TodoStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
    _$LoadingImpl _value,
    $Res Function(_$LoadingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TodoState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'TodoState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
      List<TodoListEntity>? lists,
      List<TaskEntity>? taskEntityList,
      String? error,
    )
    loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
      List<TodoListEntity>? lists,
      List<TaskEntity>? taskEntityList,
      String? error,
    )?
    loaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
      List<TodoListEntity>? lists,
      List<TaskEntity>? taskEntityList,
      String? error,
    )?
    loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements TodoState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
    _$LoadedImpl value,
    $Res Function(_$LoadedImpl) then,
  ) = __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({
    List<TodoListEntity>? lists,
    List<TaskEntity>? taskEntityList,
    String? error,
  });
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$TodoStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
    _$LoadedImpl _value,
    $Res Function(_$LoadedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TodoState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lists = freezed,
    Object? taskEntityList = freezed,
    Object? error = freezed,
  }) {
    return _then(
      _$LoadedImpl(
        lists: freezed == lists
            ? _value._lists
            : lists // ignore: cast_nullable_to_non_nullable
                  as List<TodoListEntity>?,
        taskEntityList: freezed == taskEntityList
            ? _value._taskEntityList
            : taskEntityList // ignore: cast_nullable_to_non_nullable
                  as List<TaskEntity>?,
        error: freezed == error
            ? _value.error
            : error // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl({
    final List<TodoListEntity>? lists,
    final List<TaskEntity>? taskEntityList,
    this.error,
  }) : _lists = lists,
       _taskEntityList = taskEntityList;

  final List<TodoListEntity>? _lists;
  @override
  List<TodoListEntity>? get lists {
    final value = _lists;
    if (value == null) return null;
    if (_lists is EqualUnmodifiableListView) return _lists;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<TaskEntity>? _taskEntityList;
  @override
  List<TaskEntity>? get taskEntityList {
    final value = _taskEntityList;
    if (value == null) return null;
    if (_taskEntityList is EqualUnmodifiableListView) return _taskEntityList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? error;

  @override
  String toString() {
    return 'TodoState.loaded(lists: $lists, taskEntityList: $taskEntityList, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            const DeepCollectionEquality().equals(other._lists, _lists) &&
            const DeepCollectionEquality().equals(
              other._taskEntityList,
              _taskEntityList,
            ) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_lists),
    const DeepCollectionEquality().hash(_taskEntityList),
    error,
  );

  /// Create a copy of TodoState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
      List<TodoListEntity>? lists,
      List<TaskEntity>? taskEntityList,
      String? error,
    )
    loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(lists, taskEntityList, this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
      List<TodoListEntity>? lists,
      List<TaskEntity>? taskEntityList,
      String? error,
    )?
    loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(lists, taskEntityList, this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
      List<TodoListEntity>? lists,
      List<TaskEntity>? taskEntityList,
      String? error,
    )?
    loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(lists, taskEntityList, this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements TodoState {
  const factory _Loaded({
    final List<TodoListEntity>? lists,
    final List<TaskEntity>? taskEntityList,
    final String? error,
  }) = _$LoadedImpl;

  List<TodoListEntity>? get lists;
  List<TaskEntity>? get taskEntityList;
  String? get error;

  /// Create a copy of TodoState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
    _$ErrorImpl value,
    $Res Function(_$ErrorImpl) then,
  ) = __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$TodoStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
    _$ErrorImpl _value,
    $Res Function(_$ErrorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TodoState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$ErrorImpl(
        null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'TodoState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of TodoState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
      List<TodoListEntity>? lists,
      List<TaskEntity>? taskEntityList,
      String? error,
    )
    loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
      List<TodoListEntity>? lists,
      List<TaskEntity>? taskEntityList,
      String? error,
    )?
    loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
      List<TodoListEntity>? lists,
      List<TaskEntity>? taskEntityList,
      String? error,
    )?
    loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements TodoState {
  const factory _Error(final String message) = _$ErrorImpl;

  String get message;

  /// Create a copy of TodoState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
