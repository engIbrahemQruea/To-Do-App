// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_screen_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomeScreenState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeScreenState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeScreenState()';
}


}

/// @nodoc
class $HomeScreenStateCopyWith<$Res>  {
$HomeScreenStateCopyWith(HomeScreenState _, $Res Function(HomeScreenState) __);
}


/// Adds pattern-matching-related methods to [HomeScreenState].
extension HomeScreenStatePatterns on HomeScreenState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( GetAllTaskLoading value)?  getAllTaskLoading,TResult Function( GetAllTaskSuccess value)?  getAllTaskSuccess,TResult Function( GetAllTaskFailure value)?  getAllTaskFailure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case GetAllTaskLoading() when getAllTaskLoading != null:
return getAllTaskLoading(_that);case GetAllTaskSuccess() when getAllTaskSuccess != null:
return getAllTaskSuccess(_that);case GetAllTaskFailure() when getAllTaskFailure != null:
return getAllTaskFailure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( GetAllTaskLoading value)  getAllTaskLoading,required TResult Function( GetAllTaskSuccess value)  getAllTaskSuccess,required TResult Function( GetAllTaskFailure value)  getAllTaskFailure,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case GetAllTaskLoading():
return getAllTaskLoading(_that);case GetAllTaskSuccess():
return getAllTaskSuccess(_that);case GetAllTaskFailure():
return getAllTaskFailure(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( GetAllTaskLoading value)?  getAllTaskLoading,TResult? Function( GetAllTaskSuccess value)?  getAllTaskSuccess,TResult? Function( GetAllTaskFailure value)?  getAllTaskFailure,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case GetAllTaskLoading() when getAllTaskLoading != null:
return getAllTaskLoading(_that);case GetAllTaskSuccess() when getAllTaskSuccess != null:
return getAllTaskSuccess(_that);case GetAllTaskFailure() when getAllTaskFailure != null:
return getAllTaskFailure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  getAllTaskLoading,TResult Function( List<EntityTask> entityTasks)?  getAllTaskSuccess,TResult Function()?  getAllTaskFailure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case GetAllTaskLoading() when getAllTaskLoading != null:
return getAllTaskLoading();case GetAllTaskSuccess() when getAllTaskSuccess != null:
return getAllTaskSuccess(_that.entityTasks);case GetAllTaskFailure() when getAllTaskFailure != null:
return getAllTaskFailure();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  getAllTaskLoading,required TResult Function( List<EntityTask> entityTasks)  getAllTaskSuccess,required TResult Function()  getAllTaskFailure,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case GetAllTaskLoading():
return getAllTaskLoading();case GetAllTaskSuccess():
return getAllTaskSuccess(_that.entityTasks);case GetAllTaskFailure():
return getAllTaskFailure();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  getAllTaskLoading,TResult? Function( List<EntityTask> entityTasks)?  getAllTaskSuccess,TResult? Function()?  getAllTaskFailure,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case GetAllTaskLoading() when getAllTaskLoading != null:
return getAllTaskLoading();case GetAllTaskSuccess() when getAllTaskSuccess != null:
return getAllTaskSuccess(_that.entityTasks);case GetAllTaskFailure() when getAllTaskFailure != null:
return getAllTaskFailure();case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements HomeScreenState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeScreenState.initial()';
}


}




/// @nodoc


class GetAllTaskLoading implements HomeScreenState {
  const GetAllTaskLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetAllTaskLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeScreenState.getAllTaskLoading()';
}


}




/// @nodoc


class GetAllTaskSuccess implements HomeScreenState {
  const GetAllTaskSuccess(final  List<EntityTask> entityTasks): _entityTasks = entityTasks;
  

 final  List<EntityTask> _entityTasks;
 List<EntityTask> get entityTasks {
  if (_entityTasks is EqualUnmodifiableListView) return _entityTasks;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_entityTasks);
}


/// Create a copy of HomeScreenState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetAllTaskSuccessCopyWith<GetAllTaskSuccess> get copyWith => _$GetAllTaskSuccessCopyWithImpl<GetAllTaskSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetAllTaskSuccess&&const DeepCollectionEquality().equals(other._entityTasks, _entityTasks));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_entityTasks));

@override
String toString() {
  return 'HomeScreenState.getAllTaskSuccess(entityTasks: $entityTasks)';
}


}

/// @nodoc
abstract mixin class $GetAllTaskSuccessCopyWith<$Res> implements $HomeScreenStateCopyWith<$Res> {
  factory $GetAllTaskSuccessCopyWith(GetAllTaskSuccess value, $Res Function(GetAllTaskSuccess) _then) = _$GetAllTaskSuccessCopyWithImpl;
@useResult
$Res call({
 List<EntityTask> entityTasks
});




}
/// @nodoc
class _$GetAllTaskSuccessCopyWithImpl<$Res>
    implements $GetAllTaskSuccessCopyWith<$Res> {
  _$GetAllTaskSuccessCopyWithImpl(this._self, this._then);

  final GetAllTaskSuccess _self;
  final $Res Function(GetAllTaskSuccess) _then;

/// Create a copy of HomeScreenState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? entityTasks = null,}) {
  return _then(GetAllTaskSuccess(
null == entityTasks ? _self._entityTasks : entityTasks // ignore: cast_nullable_to_non_nullable
as List<EntityTask>,
  ));
}


}

/// @nodoc


class GetAllTaskFailure implements HomeScreenState {
  const GetAllTaskFailure();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetAllTaskFailure);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeScreenState.getAllTaskFailure()';
}


}




// dart format on
