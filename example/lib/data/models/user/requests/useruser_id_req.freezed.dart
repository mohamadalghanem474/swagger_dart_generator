// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'useruser_id_req.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UseruserIdReq {

@JsonKey(name: "query", includeIfNull: false) UseruserIdReqQuery? get query;@JsonKey(name: "params", includeIfNull: false) UseruserIdReqParams? get params;
/// Create a copy of UseruserIdReq
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UseruserIdReqCopyWith<UseruserIdReq> get copyWith => _$UseruserIdReqCopyWithImpl<UseruserIdReq>(this as UseruserIdReq, _$identity);

  /// Serializes this UseruserIdReq to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UseruserIdReq&&(identical(other.query, query) || other.query == query)&&(identical(other.params, params) || other.params == params));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,query,params);

@override
String toString() {
  return 'UseruserIdReq(query: $query, params: $params)';
}


}

/// @nodoc
abstract mixin class $UseruserIdReqCopyWith<$Res>  {
  factory $UseruserIdReqCopyWith(UseruserIdReq value, $Res Function(UseruserIdReq) _then) = _$UseruserIdReqCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "query", includeIfNull: false) UseruserIdReqQuery? query,@JsonKey(name: "params", includeIfNull: false) UseruserIdReqParams? params
});


$UseruserIdReqQueryCopyWith<$Res>? get query;$UseruserIdReqParamsCopyWith<$Res>? get params;

}
/// @nodoc
class _$UseruserIdReqCopyWithImpl<$Res>
    implements $UseruserIdReqCopyWith<$Res> {
  _$UseruserIdReqCopyWithImpl(this._self, this._then);

  final UseruserIdReq _self;
  final $Res Function(UseruserIdReq) _then;

/// Create a copy of UseruserIdReq
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? query = freezed,Object? params = freezed,}) {
  return _then(_self.copyWith(
query: freezed == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as UseruserIdReqQuery?,params: freezed == params ? _self.params : params // ignore: cast_nullable_to_non_nullable
as UseruserIdReqParams?,
  ));
}
/// Create a copy of UseruserIdReq
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UseruserIdReqQueryCopyWith<$Res>? get query {
    if (_self.query == null) {
    return null;
  }

  return $UseruserIdReqQueryCopyWith<$Res>(_self.query!, (value) {
    return _then(_self.copyWith(query: value));
  });
}/// Create a copy of UseruserIdReq
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UseruserIdReqParamsCopyWith<$Res>? get params {
    if (_self.params == null) {
    return null;
  }

  return $UseruserIdReqParamsCopyWith<$Res>(_self.params!, (value) {
    return _then(_self.copyWith(params: value));
  });
}
}


/// Adds pattern-matching-related methods to [UseruserIdReq].
extension UseruserIdReqPatterns on UseruserIdReq {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UseruserIdReq value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UseruserIdReq() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UseruserIdReq value)  $default,){
final _that = this;
switch (_that) {
case _UseruserIdReq():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UseruserIdReq value)?  $default,){
final _that = this;
switch (_that) {
case _UseruserIdReq() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "query", includeIfNull: false)  UseruserIdReqQuery? query, @JsonKey(name: "params", includeIfNull: false)  UseruserIdReqParams? params)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UseruserIdReq() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "query", includeIfNull: false)  UseruserIdReqQuery? query, @JsonKey(name: "params", includeIfNull: false)  UseruserIdReqParams? params)  $default,) {final _that = this;
switch (_that) {
case _UseruserIdReq():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "query", includeIfNull: false)  UseruserIdReqQuery? query, @JsonKey(name: "params", includeIfNull: false)  UseruserIdReqParams? params)?  $default,) {final _that = this;
switch (_that) {
case _UseruserIdReq() when $default != null:
return $default(_that.query,_that.params);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UseruserIdReq implements UseruserIdReq {
  const _UseruserIdReq({@JsonKey(name: "query", includeIfNull: false) this.query, @JsonKey(name: "params", includeIfNull: false) this.params});
  factory _UseruserIdReq.fromJson(Map<String, dynamic> json) => _$UseruserIdReqFromJson(json);

@override@JsonKey(name: "query", includeIfNull: false) final  UseruserIdReqQuery? query;
@override@JsonKey(name: "params", includeIfNull: false) final  UseruserIdReqParams? params;

/// Create a copy of UseruserIdReq
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UseruserIdReqCopyWith<_UseruserIdReq> get copyWith => __$UseruserIdReqCopyWithImpl<_UseruserIdReq>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UseruserIdReqToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UseruserIdReq&&(identical(other.query, query) || other.query == query)&&(identical(other.params, params) || other.params == params));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,query,params);

@override
String toString() {
  return 'UseruserIdReq(query: $query, params: $params)';
}


}

/// @nodoc
abstract mixin class _$UseruserIdReqCopyWith<$Res> implements $UseruserIdReqCopyWith<$Res> {
  factory _$UseruserIdReqCopyWith(_UseruserIdReq value, $Res Function(_UseruserIdReq) _then) = __$UseruserIdReqCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "query", includeIfNull: false) UseruserIdReqQuery? query,@JsonKey(name: "params", includeIfNull: false) UseruserIdReqParams? params
});


@override $UseruserIdReqQueryCopyWith<$Res>? get query;@override $UseruserIdReqParamsCopyWith<$Res>? get params;

}
/// @nodoc
class __$UseruserIdReqCopyWithImpl<$Res>
    implements _$UseruserIdReqCopyWith<$Res> {
  __$UseruserIdReqCopyWithImpl(this._self, this._then);

  final _UseruserIdReq _self;
  final $Res Function(_UseruserIdReq) _then;

/// Create a copy of UseruserIdReq
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? query = freezed,Object? params = freezed,}) {
  return _then(_UseruserIdReq(
query: freezed == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as UseruserIdReqQuery?,params: freezed == params ? _self.params : params // ignore: cast_nullable_to_non_nullable
as UseruserIdReqParams?,
  ));
}

/// Create a copy of UseruserIdReq
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UseruserIdReqQueryCopyWith<$Res>? get query {
    if (_self.query == null) {
    return null;
  }

  return $UseruserIdReqQueryCopyWith<$Res>(_self.query!, (value) {
    return _then(_self.copyWith(query: value));
  });
}/// Create a copy of UseruserIdReq
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UseruserIdReqParamsCopyWith<$Res>? get params {
    if (_self.params == null) {
    return null;
  }

  return $UseruserIdReqParamsCopyWith<$Res>(_self.params!, (value) {
    return _then(_self.copyWith(params: value));
  });
}
}


/// @nodoc
mixin _$UseruserIdReqQuery {

@JsonKey(name: "includeDetails", includeIfNull: false) String? get includeDetails;
/// Create a copy of UseruserIdReqQuery
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UseruserIdReqQueryCopyWith<UseruserIdReqQuery> get copyWith => _$UseruserIdReqQueryCopyWithImpl<UseruserIdReqQuery>(this as UseruserIdReqQuery, _$identity);

  /// Serializes this UseruserIdReqQuery to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UseruserIdReqQuery&&(identical(other.includeDetails, includeDetails) || other.includeDetails == includeDetails));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,includeDetails);

@override
String toString() {
  return 'UseruserIdReqQuery(includeDetails: $includeDetails)';
}


}

/// @nodoc
abstract mixin class $UseruserIdReqQueryCopyWith<$Res>  {
  factory $UseruserIdReqQueryCopyWith(UseruserIdReqQuery value, $Res Function(UseruserIdReqQuery) _then) = _$UseruserIdReqQueryCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "includeDetails", includeIfNull: false) String? includeDetails
});




}
/// @nodoc
class _$UseruserIdReqQueryCopyWithImpl<$Res>
    implements $UseruserIdReqQueryCopyWith<$Res> {
  _$UseruserIdReqQueryCopyWithImpl(this._self, this._then);

  final UseruserIdReqQuery _self;
  final $Res Function(UseruserIdReqQuery) _then;

/// Create a copy of UseruserIdReqQuery
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? includeDetails = freezed,}) {
  return _then(_self.copyWith(
includeDetails: freezed == includeDetails ? _self.includeDetails : includeDetails // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [UseruserIdReqQuery].
extension UseruserIdReqQueryPatterns on UseruserIdReqQuery {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UseruserIdReqQuery value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UseruserIdReqQuery() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UseruserIdReqQuery value)  $default,){
final _that = this;
switch (_that) {
case _UseruserIdReqQuery():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UseruserIdReqQuery value)?  $default,){
final _that = this;
switch (_that) {
case _UseruserIdReqQuery() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "includeDetails", includeIfNull: false)  String? includeDetails)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UseruserIdReqQuery() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "includeDetails", includeIfNull: false)  String? includeDetails)  $default,) {final _that = this;
switch (_that) {
case _UseruserIdReqQuery():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "includeDetails", includeIfNull: false)  String? includeDetails)?  $default,) {final _that = this;
switch (_that) {
case _UseruserIdReqQuery() when $default != null:
return $default(_that.includeDetails);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UseruserIdReqQuery implements UseruserIdReqQuery {
  const _UseruserIdReqQuery({@JsonKey(name: "includeDetails", includeIfNull: false) this.includeDetails});
  factory _UseruserIdReqQuery.fromJson(Map<String, dynamic> json) => _$UseruserIdReqQueryFromJson(json);

@override@JsonKey(name: "includeDetails", includeIfNull: false) final  String? includeDetails;

/// Create a copy of UseruserIdReqQuery
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UseruserIdReqQueryCopyWith<_UseruserIdReqQuery> get copyWith => __$UseruserIdReqQueryCopyWithImpl<_UseruserIdReqQuery>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UseruserIdReqQueryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UseruserIdReqQuery&&(identical(other.includeDetails, includeDetails) || other.includeDetails == includeDetails));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,includeDetails);

@override
String toString() {
  return 'UseruserIdReqQuery(includeDetails: $includeDetails)';
}


}

/// @nodoc
abstract mixin class _$UseruserIdReqQueryCopyWith<$Res> implements $UseruserIdReqQueryCopyWith<$Res> {
  factory _$UseruserIdReqQueryCopyWith(_UseruserIdReqQuery value, $Res Function(_UseruserIdReqQuery) _then) = __$UseruserIdReqQueryCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "includeDetails", includeIfNull: false) String? includeDetails
});




}
/// @nodoc
class __$UseruserIdReqQueryCopyWithImpl<$Res>
    implements _$UseruserIdReqQueryCopyWith<$Res> {
  __$UseruserIdReqQueryCopyWithImpl(this._self, this._then);

  final _UseruserIdReqQuery _self;
  final $Res Function(_UseruserIdReqQuery) _then;

/// Create a copy of UseruserIdReqQuery
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? includeDetails = freezed,}) {
  return _then(_UseruserIdReqQuery(
includeDetails: freezed == includeDetails ? _self.includeDetails : includeDetails // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$UseruserIdReqParams {

@JsonKey(name: "userId", includeIfNull: false) String? get userId;
/// Create a copy of UseruserIdReqParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UseruserIdReqParamsCopyWith<UseruserIdReqParams> get copyWith => _$UseruserIdReqParamsCopyWithImpl<UseruserIdReqParams>(this as UseruserIdReqParams, _$identity);

  /// Serializes this UseruserIdReqParams to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UseruserIdReqParams&&(identical(other.userId, userId) || other.userId == userId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId);

@override
String toString() {
  return 'UseruserIdReqParams(userId: $userId)';
}


}

/// @nodoc
abstract mixin class $UseruserIdReqParamsCopyWith<$Res>  {
  factory $UseruserIdReqParamsCopyWith(UseruserIdReqParams value, $Res Function(UseruserIdReqParams) _then) = _$UseruserIdReqParamsCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "userId", includeIfNull: false) String? userId
});




}
/// @nodoc
class _$UseruserIdReqParamsCopyWithImpl<$Res>
    implements $UseruserIdReqParamsCopyWith<$Res> {
  _$UseruserIdReqParamsCopyWithImpl(this._self, this._then);

  final UseruserIdReqParams _self;
  final $Res Function(UseruserIdReqParams) _then;

/// Create a copy of UseruserIdReqParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = freezed,}) {
  return _then(_self.copyWith(
userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [UseruserIdReqParams].
extension UseruserIdReqParamsPatterns on UseruserIdReqParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UseruserIdReqParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UseruserIdReqParams() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UseruserIdReqParams value)  $default,){
final _that = this;
switch (_that) {
case _UseruserIdReqParams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UseruserIdReqParams value)?  $default,){
final _that = this;
switch (_that) {
case _UseruserIdReqParams() when $default != null:
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
case _UseruserIdReqParams() when $default != null:
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
case _UseruserIdReqParams():
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
case _UseruserIdReqParams() when $default != null:
return $default(_that.userId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UseruserIdReqParams implements UseruserIdReqParams {
  const _UseruserIdReqParams({@JsonKey(name: "userId", includeIfNull: false) this.userId});
  factory _UseruserIdReqParams.fromJson(Map<String, dynamic> json) => _$UseruserIdReqParamsFromJson(json);

@override@JsonKey(name: "userId", includeIfNull: false) final  String? userId;

/// Create a copy of UseruserIdReqParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UseruserIdReqParamsCopyWith<_UseruserIdReqParams> get copyWith => __$UseruserIdReqParamsCopyWithImpl<_UseruserIdReqParams>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UseruserIdReqParamsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UseruserIdReqParams&&(identical(other.userId, userId) || other.userId == userId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId);

@override
String toString() {
  return 'UseruserIdReqParams(userId: $userId)';
}


}

/// @nodoc
abstract mixin class _$UseruserIdReqParamsCopyWith<$Res> implements $UseruserIdReqParamsCopyWith<$Res> {
  factory _$UseruserIdReqParamsCopyWith(_UseruserIdReqParams value, $Res Function(_UseruserIdReqParams) _then) = __$UseruserIdReqParamsCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "userId", includeIfNull: false) String? userId
});




}
/// @nodoc
class __$UseruserIdReqParamsCopyWithImpl<$Res>
    implements _$UseruserIdReqParamsCopyWith<$Res> {
  __$UseruserIdReqParamsCopyWithImpl(this._self, this._then);

  final _UseruserIdReqParams _self;
  final $Res Function(_UseruserIdReqParams) _then;

/// Create a copy of UseruserIdReqParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = freezed,}) {
  return _then(_UseruserIdReqParams(
userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
