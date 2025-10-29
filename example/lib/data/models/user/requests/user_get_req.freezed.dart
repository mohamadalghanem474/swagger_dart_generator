// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_get_req.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserGetReq {

@JsonKey(name: "query", includeIfNull: false) UserGetReqQuery? get query;@JsonKey(name: "params", includeIfNull: false) UserGetReqParams? get params;
/// Create a copy of UserGetReq
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserGetReqCopyWith<UserGetReq> get copyWith => _$UserGetReqCopyWithImpl<UserGetReq>(this as UserGetReq, _$identity);

  /// Serializes this UserGetReq to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserGetReq&&(identical(other.query, query) || other.query == query)&&(identical(other.params, params) || other.params == params));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,query,params);

@override
String toString() {
  return 'UserGetReq(query: $query, params: $params)';
}


}

/// @nodoc
abstract mixin class $UserGetReqCopyWith<$Res>  {
  factory $UserGetReqCopyWith(UserGetReq value, $Res Function(UserGetReq) _then) = _$UserGetReqCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "query", includeIfNull: false) UserGetReqQuery? query,@JsonKey(name: "params", includeIfNull: false) UserGetReqParams? params
});


$UserGetReqQueryCopyWith<$Res>? get query;$UserGetReqParamsCopyWith<$Res>? get params;

}
/// @nodoc
class _$UserGetReqCopyWithImpl<$Res>
    implements $UserGetReqCopyWith<$Res> {
  _$UserGetReqCopyWithImpl(this._self, this._then);

  final UserGetReq _self;
  final $Res Function(UserGetReq) _then;

/// Create a copy of UserGetReq
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? query = freezed,Object? params = freezed,}) {
  return _then(_self.copyWith(
query: freezed == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as UserGetReqQuery?,params: freezed == params ? _self.params : params // ignore: cast_nullable_to_non_nullable
as UserGetReqParams?,
  ));
}
/// Create a copy of UserGetReq
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserGetReqQueryCopyWith<$Res>? get query {
    if (_self.query == null) {
    return null;
  }

  return $UserGetReqQueryCopyWith<$Res>(_self.query!, (value) {
    return _then(_self.copyWith(query: value));
  });
}/// Create a copy of UserGetReq
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserGetReqParamsCopyWith<$Res>? get params {
    if (_self.params == null) {
    return null;
  }

  return $UserGetReqParamsCopyWith<$Res>(_self.params!, (value) {
    return _then(_self.copyWith(params: value));
  });
}
}


/// Adds pattern-matching-related methods to [UserGetReq].
extension UserGetReqPatterns on UserGetReq {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserGetReq value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserGetReq() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserGetReq value)  $default,){
final _that = this;
switch (_that) {
case _UserGetReq():
return $default(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserGetReq value)?  $default,){
final _that = this;
switch (_that) {
case _UserGetReq() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "query", includeIfNull: false)  UserGetReqQuery? query, @JsonKey(name: "params", includeIfNull: false)  UserGetReqParams? params)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserGetReq() when $default != null:
return $default(_that.query,_that.params);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "query", includeIfNull: false)  UserGetReqQuery? query, @JsonKey(name: "params", includeIfNull: false)  UserGetReqParams? params)  $default,) {final _that = this;
switch (_that) {
case _UserGetReq():
return $default(_that.query,_that.params);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "query", includeIfNull: false)  UserGetReqQuery? query, @JsonKey(name: "params", includeIfNull: false)  UserGetReqParams? params)?  $default,) {final _that = this;
switch (_that) {
case _UserGetReq() when $default != null:
return $default(_that.query,_that.params);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserGetReq implements UserGetReq {
  const _UserGetReq({@JsonKey(name: "query", includeIfNull: false) this.query, @JsonKey(name: "params", includeIfNull: false) this.params});
  factory _UserGetReq.fromJson(Map<String, dynamic> json) => _$UserGetReqFromJson(json);

@override@JsonKey(name: "query", includeIfNull: false) final  UserGetReqQuery? query;
@override@JsonKey(name: "params", includeIfNull: false) final  UserGetReqParams? params;

/// Create a copy of UserGetReq
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserGetReqCopyWith<_UserGetReq> get copyWith => __$UserGetReqCopyWithImpl<_UserGetReq>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserGetReqToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserGetReq&&(identical(other.query, query) || other.query == query)&&(identical(other.params, params) || other.params == params));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,query,params);

@override
String toString() {
  return 'UserGetReq(query: $query, params: $params)';
}


}

/// @nodoc
abstract mixin class _$UserGetReqCopyWith<$Res> implements $UserGetReqCopyWith<$Res> {
  factory _$UserGetReqCopyWith(_UserGetReq value, $Res Function(_UserGetReq) _then) = __$UserGetReqCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "query", includeIfNull: false) UserGetReqQuery? query,@JsonKey(name: "params", includeIfNull: false) UserGetReqParams? params
});


@override $UserGetReqQueryCopyWith<$Res>? get query;@override $UserGetReqParamsCopyWith<$Res>? get params;

}
/// @nodoc
class __$UserGetReqCopyWithImpl<$Res>
    implements _$UserGetReqCopyWith<$Res> {
  __$UserGetReqCopyWithImpl(this._self, this._then);

  final _UserGetReq _self;
  final $Res Function(_UserGetReq) _then;

/// Create a copy of UserGetReq
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? query = freezed,Object? params = freezed,}) {
  return _then(_UserGetReq(
query: freezed == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as UserGetReqQuery?,params: freezed == params ? _self.params : params // ignore: cast_nullable_to_non_nullable
as UserGetReqParams?,
  ));
}

/// Create a copy of UserGetReq
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserGetReqQueryCopyWith<$Res>? get query {
    if (_self.query == null) {
    return null;
  }

  return $UserGetReqQueryCopyWith<$Res>(_self.query!, (value) {
    return _then(_self.copyWith(query: value));
  });
}/// Create a copy of UserGetReq
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserGetReqParamsCopyWith<$Res>? get params {
    if (_self.params == null) {
    return null;
  }

  return $UserGetReqParamsCopyWith<$Res>(_self.params!, (value) {
    return _then(_self.copyWith(params: value));
  });
}
}


/// @nodoc
mixin _$UserGetReqQuery {

@JsonKey(name: "includeDetails", includeIfNull: false) bool? get includeDetails;
/// Create a copy of UserGetReqQuery
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserGetReqQueryCopyWith<UserGetReqQuery> get copyWith => _$UserGetReqQueryCopyWithImpl<UserGetReqQuery>(this as UserGetReqQuery, _$identity);

  /// Serializes this UserGetReqQuery to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserGetReqQuery&&(identical(other.includeDetails, includeDetails) || other.includeDetails == includeDetails));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,includeDetails);

@override
String toString() {
  return 'UserGetReqQuery(includeDetails: $includeDetails)';
}


}

/// @nodoc
abstract mixin class $UserGetReqQueryCopyWith<$Res>  {
  factory $UserGetReqQueryCopyWith(UserGetReqQuery value, $Res Function(UserGetReqQuery) _then) = _$UserGetReqQueryCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "includeDetails", includeIfNull: false) bool? includeDetails
});




}
/// @nodoc
class _$UserGetReqQueryCopyWithImpl<$Res>
    implements $UserGetReqQueryCopyWith<$Res> {
  _$UserGetReqQueryCopyWithImpl(this._self, this._then);

  final UserGetReqQuery _self;
  final $Res Function(UserGetReqQuery) _then;

/// Create a copy of UserGetReqQuery
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? includeDetails = freezed,}) {
  return _then(_self.copyWith(
includeDetails: freezed == includeDetails ? _self.includeDetails : includeDetails // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [UserGetReqQuery].
extension UserGetReqQueryPatterns on UserGetReqQuery {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserGetReqQuery value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserGetReqQuery() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserGetReqQuery value)  $default,){
final _that = this;
switch (_that) {
case _UserGetReqQuery():
return $default(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserGetReqQuery value)?  $default,){
final _that = this;
switch (_that) {
case _UserGetReqQuery() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "includeDetails", includeIfNull: false)  bool? includeDetails)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserGetReqQuery() when $default != null:
return $default(_that.includeDetails);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "includeDetails", includeIfNull: false)  bool? includeDetails)  $default,) {final _that = this;
switch (_that) {
case _UserGetReqQuery():
return $default(_that.includeDetails);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "includeDetails", includeIfNull: false)  bool? includeDetails)?  $default,) {final _that = this;
switch (_that) {
case _UserGetReqQuery() when $default != null:
return $default(_that.includeDetails);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserGetReqQuery implements UserGetReqQuery {
  const _UserGetReqQuery({@JsonKey(name: "includeDetails", includeIfNull: false) this.includeDetails});
  factory _UserGetReqQuery.fromJson(Map<String, dynamic> json) => _$UserGetReqQueryFromJson(json);

@override@JsonKey(name: "includeDetails", includeIfNull: false) final  bool? includeDetails;

/// Create a copy of UserGetReqQuery
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserGetReqQueryCopyWith<_UserGetReqQuery> get copyWith => __$UserGetReqQueryCopyWithImpl<_UserGetReqQuery>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserGetReqQueryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserGetReqQuery&&(identical(other.includeDetails, includeDetails) || other.includeDetails == includeDetails));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,includeDetails);

@override
String toString() {
  return 'UserGetReqQuery(includeDetails: $includeDetails)';
}


}

/// @nodoc
abstract mixin class _$UserGetReqQueryCopyWith<$Res> implements $UserGetReqQueryCopyWith<$Res> {
  factory _$UserGetReqQueryCopyWith(_UserGetReqQuery value, $Res Function(_UserGetReqQuery) _then) = __$UserGetReqQueryCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "includeDetails", includeIfNull: false) bool? includeDetails
});




}
/// @nodoc
class __$UserGetReqQueryCopyWithImpl<$Res>
    implements _$UserGetReqQueryCopyWith<$Res> {
  __$UserGetReqQueryCopyWithImpl(this._self, this._then);

  final _UserGetReqQuery _self;
  final $Res Function(_UserGetReqQuery) _then;

/// Create a copy of UserGetReqQuery
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? includeDetails = freezed,}) {
  return _then(_UserGetReqQuery(
includeDetails: freezed == includeDetails ? _self.includeDetails : includeDetails // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}


/// @nodoc
mixin _$UserGetReqParams {

@JsonKey(name: "userId", includeIfNull: false) String? get userId;
/// Create a copy of UserGetReqParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserGetReqParamsCopyWith<UserGetReqParams> get copyWith => _$UserGetReqParamsCopyWithImpl<UserGetReqParams>(this as UserGetReqParams, _$identity);

  /// Serializes this UserGetReqParams to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserGetReqParams&&(identical(other.userId, userId) || other.userId == userId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId);

@override
String toString() {
  return 'UserGetReqParams(userId: $userId)';
}


}

/// @nodoc
abstract mixin class $UserGetReqParamsCopyWith<$Res>  {
  factory $UserGetReqParamsCopyWith(UserGetReqParams value, $Res Function(UserGetReqParams) _then) = _$UserGetReqParamsCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "userId", includeIfNull: false) String? userId
});




}
/// @nodoc
class _$UserGetReqParamsCopyWithImpl<$Res>
    implements $UserGetReqParamsCopyWith<$Res> {
  _$UserGetReqParamsCopyWithImpl(this._self, this._then);

  final UserGetReqParams _self;
  final $Res Function(UserGetReqParams) _then;

/// Create a copy of UserGetReqParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = freezed,}) {
  return _then(_self.copyWith(
userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [UserGetReqParams].
extension UserGetReqParamsPatterns on UserGetReqParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserGetReqParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserGetReqParams() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserGetReqParams value)  $default,){
final _that = this;
switch (_that) {
case _UserGetReqParams():
return $default(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserGetReqParams value)?  $default,){
final _that = this;
switch (_that) {
case _UserGetReqParams() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "userId", includeIfNull: false)  String? userId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserGetReqParams() when $default != null:
return $default(_that.userId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "userId", includeIfNull: false)  String? userId)  $default,) {final _that = this;
switch (_that) {
case _UserGetReqParams():
return $default(_that.userId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "userId", includeIfNull: false)  String? userId)?  $default,) {final _that = this;
switch (_that) {
case _UserGetReqParams() when $default != null:
return $default(_that.userId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserGetReqParams implements UserGetReqParams {
  const _UserGetReqParams({@JsonKey(name: "userId", includeIfNull: false) this.userId});
  factory _UserGetReqParams.fromJson(Map<String, dynamic> json) => _$UserGetReqParamsFromJson(json);

@override@JsonKey(name: "userId", includeIfNull: false) final  String? userId;

/// Create a copy of UserGetReqParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserGetReqParamsCopyWith<_UserGetReqParams> get copyWith => __$UserGetReqParamsCopyWithImpl<_UserGetReqParams>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserGetReqParamsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserGetReqParams&&(identical(other.userId, userId) || other.userId == userId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId);

@override
String toString() {
  return 'UserGetReqParams(userId: $userId)';
}


}

/// @nodoc
abstract mixin class _$UserGetReqParamsCopyWith<$Res> implements $UserGetReqParamsCopyWith<$Res> {
  factory _$UserGetReqParamsCopyWith(_UserGetReqParams value, $Res Function(_UserGetReqParams) _then) = __$UserGetReqParamsCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "userId", includeIfNull: false) String? userId
});




}
/// @nodoc
class __$UserGetReqParamsCopyWithImpl<$Res>
    implements _$UserGetReqParamsCopyWith<$Res> {
  __$UserGetReqParamsCopyWithImpl(this._self, this._then);

  final _UserGetReqParams _self;
  final $Res Function(_UserGetReqParams) _then;

/// Create a copy of UserGetReqParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = freezed,}) {
  return _then(_UserGetReqParams(
userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
