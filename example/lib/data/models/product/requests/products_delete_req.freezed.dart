// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'products_delete_req.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProductsDeleteReq {

@JsonKey(name: "params", includeIfNull: false) ProductsDeleteReqParams? get params;
/// Create a copy of ProductsDeleteReq
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductsDeleteReqCopyWith<ProductsDeleteReq> get copyWith => _$ProductsDeleteReqCopyWithImpl<ProductsDeleteReq>(this as ProductsDeleteReq, _$identity);

  /// Serializes this ProductsDeleteReq to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductsDeleteReq&&(identical(other.params, params) || other.params == params));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,params);

@override
String toString() {
  return 'ProductsDeleteReq(params: $params)';
}


}

/// @nodoc
abstract mixin class $ProductsDeleteReqCopyWith<$Res>  {
  factory $ProductsDeleteReqCopyWith(ProductsDeleteReq value, $Res Function(ProductsDeleteReq) _then) = _$ProductsDeleteReqCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "params", includeIfNull: false) ProductsDeleteReqParams? params
});


$ProductsDeleteReqParamsCopyWith<$Res>? get params;

}
/// @nodoc
class _$ProductsDeleteReqCopyWithImpl<$Res>
    implements $ProductsDeleteReqCopyWith<$Res> {
  _$ProductsDeleteReqCopyWithImpl(this._self, this._then);

  final ProductsDeleteReq _self;
  final $Res Function(ProductsDeleteReq) _then;

/// Create a copy of ProductsDeleteReq
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? params = freezed,}) {
  return _then(_self.copyWith(
params: freezed == params ? _self.params : params // ignore: cast_nullable_to_non_nullable
as ProductsDeleteReqParams?,
  ));
}
/// Create a copy of ProductsDeleteReq
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductsDeleteReqParamsCopyWith<$Res>? get params {
    if (_self.params == null) {
    return null;
  }

  return $ProductsDeleteReqParamsCopyWith<$Res>(_self.params!, (value) {
    return _then(_self.copyWith(params: value));
  });
}
}


/// Adds pattern-matching-related methods to [ProductsDeleteReq].
extension ProductsDeleteReqPatterns on ProductsDeleteReq {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductsDeleteReq value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductsDeleteReq() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductsDeleteReq value)  $default,){
final _that = this;
switch (_that) {
case _ProductsDeleteReq():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductsDeleteReq value)?  $default,){
final _that = this;
switch (_that) {
case _ProductsDeleteReq() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "params", includeIfNull: false)  ProductsDeleteReqParams? params)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductsDeleteReq() when $default != null:
return $default(_that.params);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "params", includeIfNull: false)  ProductsDeleteReqParams? params)  $default,) {final _that = this;
switch (_that) {
case _ProductsDeleteReq():
return $default(_that.params);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "params", includeIfNull: false)  ProductsDeleteReqParams? params)?  $default,) {final _that = this;
switch (_that) {
case _ProductsDeleteReq() when $default != null:
return $default(_that.params);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProductsDeleteReq implements ProductsDeleteReq {
  const _ProductsDeleteReq({@JsonKey(name: "params", includeIfNull: false) this.params});
  factory _ProductsDeleteReq.fromJson(Map<String, dynamic> json) => _$ProductsDeleteReqFromJson(json);

@override@JsonKey(name: "params", includeIfNull: false) final  ProductsDeleteReqParams? params;

/// Create a copy of ProductsDeleteReq
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductsDeleteReqCopyWith<_ProductsDeleteReq> get copyWith => __$ProductsDeleteReqCopyWithImpl<_ProductsDeleteReq>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductsDeleteReqToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductsDeleteReq&&(identical(other.params, params) || other.params == params));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,params);

@override
String toString() {
  return 'ProductsDeleteReq(params: $params)';
}


}

/// @nodoc
abstract mixin class _$ProductsDeleteReqCopyWith<$Res> implements $ProductsDeleteReqCopyWith<$Res> {
  factory _$ProductsDeleteReqCopyWith(_ProductsDeleteReq value, $Res Function(_ProductsDeleteReq) _then) = __$ProductsDeleteReqCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "params", includeIfNull: false) ProductsDeleteReqParams? params
});


@override $ProductsDeleteReqParamsCopyWith<$Res>? get params;

}
/// @nodoc
class __$ProductsDeleteReqCopyWithImpl<$Res>
    implements _$ProductsDeleteReqCopyWith<$Res> {
  __$ProductsDeleteReqCopyWithImpl(this._self, this._then);

  final _ProductsDeleteReq _self;
  final $Res Function(_ProductsDeleteReq) _then;

/// Create a copy of ProductsDeleteReq
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? params = freezed,}) {
  return _then(_ProductsDeleteReq(
params: freezed == params ? _self.params : params // ignore: cast_nullable_to_non_nullable
as ProductsDeleteReqParams?,
  ));
}

/// Create a copy of ProductsDeleteReq
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductsDeleteReqParamsCopyWith<$Res>? get params {
    if (_self.params == null) {
    return null;
  }

  return $ProductsDeleteReqParamsCopyWith<$Res>(_self.params!, (value) {
    return _then(_self.copyWith(params: value));
  });
}
}


/// @nodoc
mixin _$ProductsDeleteReqParams {

@JsonKey(name: "id", includeIfNull: false) int? get id;
/// Create a copy of ProductsDeleteReqParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductsDeleteReqParamsCopyWith<ProductsDeleteReqParams> get copyWith => _$ProductsDeleteReqParamsCopyWithImpl<ProductsDeleteReqParams>(this as ProductsDeleteReqParams, _$identity);

  /// Serializes this ProductsDeleteReqParams to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductsDeleteReqParams&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'ProductsDeleteReqParams(id: $id)';
}


}

/// @nodoc
abstract mixin class $ProductsDeleteReqParamsCopyWith<$Res>  {
  factory $ProductsDeleteReqParamsCopyWith(ProductsDeleteReqParams value, $Res Function(ProductsDeleteReqParams) _then) = _$ProductsDeleteReqParamsCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "id", includeIfNull: false) int? id
});




}
/// @nodoc
class _$ProductsDeleteReqParamsCopyWithImpl<$Res>
    implements $ProductsDeleteReqParamsCopyWith<$Res> {
  _$ProductsDeleteReqParamsCopyWithImpl(this._self, this._then);

  final ProductsDeleteReqParams _self;
  final $Res Function(ProductsDeleteReqParams) _then;

/// Create a copy of ProductsDeleteReqParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [ProductsDeleteReqParams].
extension ProductsDeleteReqParamsPatterns on ProductsDeleteReqParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductsDeleteReqParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductsDeleteReqParams() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductsDeleteReqParams value)  $default,){
final _that = this;
switch (_that) {
case _ProductsDeleteReqParams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductsDeleteReqParams value)?  $default,){
final _that = this;
switch (_that) {
case _ProductsDeleteReqParams() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "id", includeIfNull: false)  int? id)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductsDeleteReqParams() when $default != null:
return $default(_that.id);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "id", includeIfNull: false)  int? id)  $default,) {final _that = this;
switch (_that) {
case _ProductsDeleteReqParams():
return $default(_that.id);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "id", includeIfNull: false)  int? id)?  $default,) {final _that = this;
switch (_that) {
case _ProductsDeleteReqParams() when $default != null:
return $default(_that.id);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProductsDeleteReqParams implements ProductsDeleteReqParams {
  const _ProductsDeleteReqParams({@JsonKey(name: "id", includeIfNull: false) this.id});
  factory _ProductsDeleteReqParams.fromJson(Map<String, dynamic> json) => _$ProductsDeleteReqParamsFromJson(json);

@override@JsonKey(name: "id", includeIfNull: false) final  int? id;

/// Create a copy of ProductsDeleteReqParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductsDeleteReqParamsCopyWith<_ProductsDeleteReqParams> get copyWith => __$ProductsDeleteReqParamsCopyWithImpl<_ProductsDeleteReqParams>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductsDeleteReqParamsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductsDeleteReqParams&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'ProductsDeleteReqParams(id: $id)';
}


}

/// @nodoc
abstract mixin class _$ProductsDeleteReqParamsCopyWith<$Res> implements $ProductsDeleteReqParamsCopyWith<$Res> {
  factory _$ProductsDeleteReqParamsCopyWith(_ProductsDeleteReqParams value, $Res Function(_ProductsDeleteReqParams) _then) = __$ProductsDeleteReqParamsCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "id", includeIfNull: false) int? id
});




}
/// @nodoc
class __$ProductsDeleteReqParamsCopyWithImpl<$Res>
    implements _$ProductsDeleteReqParamsCopyWith<$Res> {
  __$ProductsDeleteReqParamsCopyWithImpl(this._self, this._then);

  final _ProductsDeleteReqParams _self;
  final $Res Function(_ProductsDeleteReqParams) _then;

/// Create a copy of ProductsDeleteReqParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,}) {
  return _then(_ProductsDeleteReqParams(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
