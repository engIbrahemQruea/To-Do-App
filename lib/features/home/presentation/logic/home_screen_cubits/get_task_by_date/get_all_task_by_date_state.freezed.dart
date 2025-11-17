// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_all_task_by_date_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GetAllTaskByDateState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetAllTaskByDateState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetAllTaskByDateState()';
}


}

/// @nodoc
class $GetAllTaskByDateStateCopyWith<$Res>  {
$GetAllTaskByDateStateCopyWith(GetAllTaskByDateState _, $Res Function(GetAllTaskByDateState) __);
}


/// Adds pattern-matching-related methods to [GetAllTaskByDateState].
extension GetAllTaskByDateStatePatterns on GetAllTaskByDateState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( GetAllTaskBySelectedDateLoading value)?  getAllTaskBySelectedDateLoading,TResult Function( GetAllTaskBySelectedDateSuccess value)?  getAllTaskBySelectedDateSuccess,TResult Function( GetAllTaskBySelectedDateFailure value)?  getAllTaskBySelectedDateFailure,TResult Function( GetSelectedDateLoading value)?  getSelectedDateLoading,TResult Function( GetSelectedDateSuccess value)?  getSelectedDateSuccess,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case GetAllTaskBySelectedDateLoading() when getAllTaskBySelectedDateLoading != null:
return getAllTaskBySelectedDateLoading(_that);case GetAllTaskBySelectedDateSuccess() when getAllTaskBySelectedDateSuccess != null:
return getAllTaskBySelectedDateSuccess(_that);case GetAllTaskBySelectedDateFailure() when getAllTaskBySelectedDateFailure != null:
return getAllTaskBySelectedDateFailure(_that);case GetSelectedDateLoading() when getSelectedDateLoading != null:
return getSelectedDateLoading(_that);case GetSelectedDateSuccess() when getSelectedDateSuccess != null:
return getSelectedDateSuccess(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( GetAllTaskBySelectedDateLoading value)  getAllTaskBySelectedDateLoading,required TResult Function( GetAllTaskBySelectedDateSuccess value)  getAllTaskBySelectedDateSuccess,required TResult Function( GetAllTaskBySelectedDateFailure value)  getAllTaskBySelectedDateFailure,required TResult Function( GetSelectedDateLoading value)  getSelectedDateLoading,required TResult Function( GetSelectedDateSuccess value)  getSelectedDateSuccess,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case GetAllTaskBySelectedDateLoading():
return getAllTaskBySelectedDateLoading(_that);case GetAllTaskBySelectedDateSuccess():
return getAllTaskBySelectedDateSuccess(_that);case GetAllTaskBySelectedDateFailure():
return getAllTaskBySelectedDateFailure(_that);case GetSelectedDateLoading():
return getSelectedDateLoading(_that);case GetSelectedDateSuccess():
return getSelectedDateSuccess(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( GetAllTaskBySelectedDateLoading value)?  getAllTaskBySelectedDateLoading,TResult? Function( GetAllTaskBySelectedDateSuccess value)?  getAllTaskBySelectedDateSuccess,TResult? Function( GetAllTaskBySelectedDateFailure value)?  getAllTaskBySelectedDateFailure,TResult? Function( GetSelectedDateLoading value)?  getSelectedDateLoading,TResult? Function( GetSelectedDateSuccess value)?  getSelectedDateSuccess,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case GetAllTaskBySelectedDateLoading() when getAllTaskBySelectedDateLoading != null:
return getAllTaskBySelectedDateLoading(_that);case GetAllTaskBySelectedDateSuccess() when getAllTaskBySelectedDateSuccess != null:
return getAllTaskBySelectedDateSuccess(_that);case GetAllTaskBySelectedDateFailure() when getAllTaskBySelectedDateFailure != null:
return getAllTaskBySelectedDateFailure(_that);case GetSelectedDateLoading() when getSelectedDateLoading != null:
return getSelectedDateLoading(_that);case GetSelectedDateSuccess() when getSelectedDateSuccess != null:
return getSelectedDateSuccess(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  getAllTaskBySelectedDateLoading,TResult Function( List<EntityTask> entityTasks)?  getAllTaskBySelectedDateSuccess,TResult Function()?  getAllTaskBySelectedDateFailure,TResult Function()?  getSelectedDateLoading,TResult Function()?  getSelectedDateSuccess,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case GetAllTaskBySelectedDateLoading() when getAllTaskBySelectedDateLoading != null:
return getAllTaskBySelectedDateLoading();case GetAllTaskBySelectedDateSuccess() when getAllTaskBySelectedDateSuccess != null:
return getAllTaskBySelectedDateSuccess(_that.entityTasks);case GetAllTaskBySelectedDateFailure() when getAllTaskBySelectedDateFailure != null:
return getAllTaskBySelectedDateFailure();case GetSelectedDateLoading() when getSelectedDateLoading != null:
return getSelectedDateLoading();case GetSelectedDateSuccess() when getSelectedDateSuccess != null:
return getSelectedDateSuccess();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  getAllTaskBySelectedDateLoading,required TResult Function( List<EntityTask> entityTasks)  getAllTaskBySelectedDateSuccess,required TResult Function()  getAllTaskBySelectedDateFailure,required TResult Function()  getSelectedDateLoading,required TResult Function()  getSelectedDateSuccess,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case GetAllTaskBySelectedDateLoading():
return getAllTaskBySelectedDateLoading();case GetAllTaskBySelectedDateSuccess():
return getAllTaskBySelectedDateSuccess(_that.entityTasks);case GetAllTaskBySelectedDateFailure():
return getAllTaskBySelectedDateFailure();case GetSelectedDateLoading():
return getSelectedDateLoading();case GetSelectedDateSuccess():
return getSelectedDateSuccess();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  getAllTaskBySelectedDateLoading,TResult? Function( List<EntityTask> entityTasks)?  getAllTaskBySelectedDateSuccess,TResult? Function()?  getAllTaskBySelectedDateFailure,TResult? Function()?  getSelectedDateLoading,TResult? Function()?  getSelectedDateSuccess,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case GetAllTaskBySelectedDateLoading() when getAllTaskBySelectedDateLoading != null:
return getAllTaskBySelectedDateLoading();case GetAllTaskBySelectedDateSuccess() when getAllTaskBySelectedDateSuccess != null:
return getAllTaskBySelectedDateSuccess(_that.entityTasks);case GetAllTaskBySelectedDateFailure() when getAllTaskBySelectedDateFailure != null:
return getAllTaskBySelectedDateFailure();case GetSelectedDateLoading() when getSelectedDateLoading != null:
return getSelectedDateLoading();case GetSelectedDateSuccess() when getSelectedDateSuccess != null:
return getSelectedDateSuccess();case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements GetAllTaskByDateState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetAllTaskByDateState.initial()';
}


}




/// @nodoc


class GetAllTaskBySelectedDateLoading implements GetAllTaskByDateState {
  const GetAllTaskBySelectedDateLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetAllTaskBySelectedDateLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetAllTaskByDateState.getAllTaskBySelectedDateLoading()';
}


}




/// @nodoc


class GetAllTaskBySelectedDateSuccess implements GetAllTaskByDateState {
  const GetAllTaskBySelectedDateSuccess(final  List<EntityTask> entityTasks): _entityTasks = entityTasks;
  

 final  List<EntityTask> _entityTasks;
 List<EntityTask> get entityTasks {
  if (_entityTasks is EqualUnmodifiableListView) return _entityTasks;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_entityTasks);
}


/// Create a copy of GetAllTaskByDateState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetAllTaskBySelectedDateSuccessCopyWith<GetAllTaskBySelectedDateSuccess> get copyWith => _$GetAllTaskBySelectedDateSuccessCopyWithImpl<GetAllTaskBySelectedDateSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetAllTaskBySelectedDateSuccess&&const DeepCollectionEquality().equals(other._entityTasks, _entityTasks));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_entityTasks));

@override
String toString() {
  return 'GetAllTaskByDateState.getAllTaskBySelectedDateSuccess(entityTasks: $entityTasks)';
}


}

/// @nodoc
abstract mixin class $GetAllTaskBySelectedDateSuccessCopyWith<$Res> implements $GetAllTaskByDateStateCopyWith<$Res> {
  factory $GetAllTaskBySelectedDateSuccessCopyWith(GetAllTaskBySelectedDateSuccess value, $Res Function(GetAllTaskBySelectedDateSuccess) _then) = _$GetAllTaskBySelectedDateSuccessCopyWithImpl;
@useResult
$Res call({
 List<EntityTask> entityTasks
});




}
/// @nodoc
class _$GetAllTaskBySelectedDateSuccessCopyWithImpl<$Res>
    implements $GetAllTaskBySelectedDateSuccessCopyWith<$Res> {
  _$GetAllTaskBySelectedDateSuccessCopyWithImpl(this._self, this._then);

  final GetAllTaskBySelectedDateSuccess _self;
  final $Res Function(GetAllTaskBySelectedDateSuccess) _then;

/// Create a copy of GetAllTaskByDateState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? entityTasks = null,}) {
  return _then(GetAllTaskBySelectedDateSuccess(
null == entityTasks ? _self._entityTasks : entityTasks // ignore: cast_nullable_to_non_nullable
as List<EntityTask>,
  ));
}


}

/// @nodoc


class GetAllTaskBySelectedDateFailure implements GetAllTaskByDateState {
  const GetAllTaskBySelectedDateFailure();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetAllTaskBySelectedDateFailure);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetAllTaskByDateState.getAllTaskBySelectedDateFailure()';
}


}




/// @nodoc


class GetSelectedDateLoading implements GetAllTaskByDateState {
  const GetSelectedDateLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetSelectedDateLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetAllTaskByDateState.getSelectedDateLoading()';
}


}




/// @nodoc


class GetSelectedDateSuccess implements GetAllTaskByDateState {
  const GetSelectedDateSuccess();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetSelectedDateSuccess);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetAllTaskByDateState.getSelectedDateSuccess()';
}


}




// dart format on
