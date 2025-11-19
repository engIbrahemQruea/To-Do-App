// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_delete_task_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UpdateDeleteTaskState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateDeleteTaskState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UpdateDeleteTaskState()';
}


}

/// @nodoc
class $UpdateDeleteTaskStateCopyWith<$Res>  {
$UpdateDeleteTaskStateCopyWith(UpdateDeleteTaskState _, $Res Function(UpdateDeleteTaskState) __);
}


/// Adds pattern-matching-related methods to [UpdateDeleteTaskState].
extension UpdateDeleteTaskStatePatterns on UpdateDeleteTaskState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( UpdateTaskLoading value)?  updateTaskLoading,TResult Function( UpdateTaskSuccess value)?  updateTaskSuccess,TResult Function( UpdateTaskFailure value)?  updateTaskFailure,TResult Function( DeleteTaskLoading value)?  deleteTaskLoading,TResult Function( DeleteTaskSuccess value)?  deleteTaskSuccess,TResult Function( DeleteTaskFailure value)?  deleteTaskFailure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case UpdateTaskLoading() when updateTaskLoading != null:
return updateTaskLoading(_that);case UpdateTaskSuccess() when updateTaskSuccess != null:
return updateTaskSuccess(_that);case UpdateTaskFailure() when updateTaskFailure != null:
return updateTaskFailure(_that);case DeleteTaskLoading() when deleteTaskLoading != null:
return deleteTaskLoading(_that);case DeleteTaskSuccess() when deleteTaskSuccess != null:
return deleteTaskSuccess(_that);case DeleteTaskFailure() when deleteTaskFailure != null:
return deleteTaskFailure(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( UpdateTaskLoading value)  updateTaskLoading,required TResult Function( UpdateTaskSuccess value)  updateTaskSuccess,required TResult Function( UpdateTaskFailure value)  updateTaskFailure,required TResult Function( DeleteTaskLoading value)  deleteTaskLoading,required TResult Function( DeleteTaskSuccess value)  deleteTaskSuccess,required TResult Function( DeleteTaskFailure value)  deleteTaskFailure,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case UpdateTaskLoading():
return updateTaskLoading(_that);case UpdateTaskSuccess():
return updateTaskSuccess(_that);case UpdateTaskFailure():
return updateTaskFailure(_that);case DeleteTaskLoading():
return deleteTaskLoading(_that);case DeleteTaskSuccess():
return deleteTaskSuccess(_that);case DeleteTaskFailure():
return deleteTaskFailure(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( UpdateTaskLoading value)?  updateTaskLoading,TResult? Function( UpdateTaskSuccess value)?  updateTaskSuccess,TResult? Function( UpdateTaskFailure value)?  updateTaskFailure,TResult? Function( DeleteTaskLoading value)?  deleteTaskLoading,TResult? Function( DeleteTaskSuccess value)?  deleteTaskSuccess,TResult? Function( DeleteTaskFailure value)?  deleteTaskFailure,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case UpdateTaskLoading() when updateTaskLoading != null:
return updateTaskLoading(_that);case UpdateTaskSuccess() when updateTaskSuccess != null:
return updateTaskSuccess(_that);case UpdateTaskFailure() when updateTaskFailure != null:
return updateTaskFailure(_that);case DeleteTaskLoading() when deleteTaskLoading != null:
return deleteTaskLoading(_that);case DeleteTaskSuccess() when deleteTaskSuccess != null:
return deleteTaskSuccess(_that);case DeleteTaskFailure() when deleteTaskFailure != null:
return deleteTaskFailure(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  updateTaskLoading,TResult Function()?  updateTaskSuccess,TResult Function()?  updateTaskFailure,TResult Function()?  deleteTaskLoading,TResult Function()?  deleteTaskSuccess,TResult Function()?  deleteTaskFailure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case UpdateTaskLoading() when updateTaskLoading != null:
return updateTaskLoading();case UpdateTaskSuccess() when updateTaskSuccess != null:
return updateTaskSuccess();case UpdateTaskFailure() when updateTaskFailure != null:
return updateTaskFailure();case DeleteTaskLoading() when deleteTaskLoading != null:
return deleteTaskLoading();case DeleteTaskSuccess() when deleteTaskSuccess != null:
return deleteTaskSuccess();case DeleteTaskFailure() when deleteTaskFailure != null:
return deleteTaskFailure();case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  updateTaskLoading,required TResult Function()  updateTaskSuccess,required TResult Function()  updateTaskFailure,required TResult Function()  deleteTaskLoading,required TResult Function()  deleteTaskSuccess,required TResult Function()  deleteTaskFailure,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case UpdateTaskLoading():
return updateTaskLoading();case UpdateTaskSuccess():
return updateTaskSuccess();case UpdateTaskFailure():
return updateTaskFailure();case DeleteTaskLoading():
return deleteTaskLoading();case DeleteTaskSuccess():
return deleteTaskSuccess();case DeleteTaskFailure():
return deleteTaskFailure();case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  updateTaskLoading,TResult? Function()?  updateTaskSuccess,TResult? Function()?  updateTaskFailure,TResult? Function()?  deleteTaskLoading,TResult? Function()?  deleteTaskSuccess,TResult? Function()?  deleteTaskFailure,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case UpdateTaskLoading() when updateTaskLoading != null:
return updateTaskLoading();case UpdateTaskSuccess() when updateTaskSuccess != null:
return updateTaskSuccess();case UpdateTaskFailure() when updateTaskFailure != null:
return updateTaskFailure();case DeleteTaskLoading() when deleteTaskLoading != null:
return deleteTaskLoading();case DeleteTaskSuccess() when deleteTaskSuccess != null:
return deleteTaskSuccess();case DeleteTaskFailure() when deleteTaskFailure != null:
return deleteTaskFailure();case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements UpdateDeleteTaskState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UpdateDeleteTaskState.initial()';
}


}




/// @nodoc


class UpdateTaskLoading implements UpdateDeleteTaskState {
  const UpdateTaskLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateTaskLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UpdateDeleteTaskState.updateTaskLoading()';
}


}




/// @nodoc


class UpdateTaskSuccess implements UpdateDeleteTaskState {
  const UpdateTaskSuccess();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateTaskSuccess);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UpdateDeleteTaskState.updateTaskSuccess()';
}


}




/// @nodoc


class UpdateTaskFailure implements UpdateDeleteTaskState {
  const UpdateTaskFailure();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateTaskFailure);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UpdateDeleteTaskState.updateTaskFailure()';
}


}




/// @nodoc


class DeleteTaskLoading implements UpdateDeleteTaskState {
  const DeleteTaskLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeleteTaskLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UpdateDeleteTaskState.deleteTaskLoading()';
}


}




/// @nodoc


class DeleteTaskSuccess implements UpdateDeleteTaskState {
  const DeleteTaskSuccess();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeleteTaskSuccess);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UpdateDeleteTaskState.deleteTaskSuccess()';
}


}




/// @nodoc


class DeleteTaskFailure implements UpdateDeleteTaskState {
  const DeleteTaskFailure();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeleteTaskFailure);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UpdateDeleteTaskState.deleteTaskFailure()';
}


}




// dart format on
