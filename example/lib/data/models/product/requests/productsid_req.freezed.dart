// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'productsid_req.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProductsidReq {

@JsonKey(name: "params", includeIfNull: false) ProductsidReqParams? get params;
/// Create a copy of ProductsidReq
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductsidReqCopyWith<ProductsidReq> get copyWith => _$ProductsidReqCopyWithImpl<ProductsidReq>(this as ProductsidReq, _$identity);

  /// Serializes this ProductsidReq to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductsidReq&&(identical(other.params, params) || other.params == params));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,params);

@override
String toString() {
  return 'ProductsidReq(params: $params)';
}


}

/// @nodoc
abstract mixin class $ProductsidReqCopyWith<$Res>  {
  factory $ProductsidReqCopyWith(ProductsidReq value, $Res Function(ProductsidReq) _then) = _$ProductsidReqCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "params", includeIfNull: false) ProductsidReqParams? params
});


$ProductsidReqParamsCopyWith<$Res>? get params;

}
/// @nodoc
class _$ProductsidReqCopyWithImpl<$Res>
    implements $ProductsidReqCopyWith<$Res> {
  _$ProductsidReqCopyWithImpl(this._self, this._then);

  final ProductsidReq _self;
  final $Res Function(ProductsidReq) _then;

/// Create a copy of ProductsidReq
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? params = freezed,}) {
  return _then(_self.copyWith(
params: freezed == params ? _self.params : params // ignore: cast_nullable_to_non_nullable
as ProductsidReqParams?,
  ));
}
/// Create a copy of ProductsidReq
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductsidReqParamsCopyWith<$Res>? get params {
    if (_self.params == null) {
    return null;
  }

  return $ProductsidReqParamsCopyWith<$Res>(_self.params!, (value) {
    return _then(_self.copyWith(params: value));
  });
}
}


/// Adds pattern-matching-related methods to [ProductsidReq].
extension ProductsidReqPatterns on ProductsidReq {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductsidReq value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductsidReq() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductsidReq value)  $default,){
final _that = this;
switch (_that) {
case _ProductsidReq():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductsidReq value)?  $default,){
final _that = this;
switch (_that) {
case _ProductsidReq() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "params", includeIfNull: false)  ProductsidReqParams? params)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductsidReq() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "params", includeIfNull: false)  ProductsidReqParams? params)  $default,) {final _that = this;
switch (_that) {
case _ProductsidReq():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "params", includeIfNull: false)  ProductsidReqParams? params)?  $default,) {final _that = this;
switch (_that) {
case _ProductsidReq() when $default != null:
return $default(_that.params);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProductsidReq implements ProductsidReq {
  const _ProductsidReq({@JsonKey(name: "params", includeIfNull: false) this.params});
  factory _ProductsidReq.fromJson(Map<String, dynamic> json) => _$ProductsidReqFromJson(json);

@override@JsonKey(name: "params", includeIfNull: false) final  ProductsidReqParams? params;

/// Create a copy of ProductsidReq
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductsidReqCopyWith<_ProductsidReq> get copyWith => __$ProductsidReqCopyWithImpl<_ProductsidReq>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductsidReqToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductsidReq&&(identical(other.params, params) || other.params == params));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,params);

@override
String toString() {
  return 'ProductsidReq(params: $params)';
}


}

/// @nodoc
abstract mixin class _$ProductsidReqCopyWith<$Res> implements $ProductsidReqCopyWith<$Res> {
  factory _$ProductsidReqCopyWith(_ProductsidReq value, $Res Function(_ProductsidReq) _then) = __$ProductsidReqCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "params", includeIfNull: false) ProductsidReqParams? params
});


@override $ProductsidReqParamsCopyWith<$Res>? get params;

}
/// @nodoc
class __$ProductsidReqCopyWithImpl<$Res>
    implements _$ProductsidReqCopyWith<$Res> {
  __$ProductsidReqCopyWithImpl(this._self, this._then);

  final _ProductsidReq _self;
  final $Res Function(_ProductsidReq) _then;

/// Create a copy of ProductsidReq
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? params = freezed,}) {
  return _then(_ProductsidReq(
params: freezed == params ? _self.params : params // ignore: cast_nullable_to_non_nullable
as ProductsidReqParams?,
  ));
}

/// Create a copy of ProductsidReq
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductsidReqParamsCopyWith<$Res>? get params {
    if (_self.params == null) {
    return null;
  }

  return $ProductsidReqParamsCopyWith<$Res>(_self.params!, (value) {
    return _then(_self.copyWith(params: value));
  });
}
}


/// @nodoc
mixin _$ProductsidReqParams {

@JsonKey(name: "id", includeIfNull: false) String? get id;
/// Create a copy of ProductsidReqParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductsidReqParamsCopyWith<ProductsidReqParams> get copyWith => _$ProductsidReqParamsCopyWithImpl<ProductsidReqParams>(this as ProductsidReqParams, _$identity);

  /// Serializes this ProductsidReqParams to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductsidReqParams&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'ProductsidReqParams(id: $id)';
}


}

/// @nodoc
abstract mixin class $ProductsidReqParamsCopyWith<$Res>  {
  factory $ProductsidReqParamsCopyWith(ProductsidReqParams value, $Res Function(ProductsidReqParams) _then) = _$ProductsidReqParamsCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "id", includeIfNull: false) String? id
});




}
/// @nodoc
class _$ProductsidReqParamsCopyWithImpl<$Res>
    implements $ProductsidReqParamsCopyWith<$Res> {
  _$ProductsidReqParamsCopyWithImpl(this._self, this._then);

  final ProductsidReqParams _self;
  final $Res Function(ProductsidReqParams) _then;

/// Create a copy of ProductsidReqParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ProductsidReqParams].
extension ProductsidReqParamsPatterns on ProductsidReqParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductsidReqParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductsidReqParams() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductsidReqParams value)  $default,){
final _that = this;
switch (_that) {
case _ProductsidReqParams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductsidReqParams value)?  $default,){
final _that = this;
switch (_that) {
case _ProductsidReqParams() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "id", includeIfNull: false)  String? id)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductsidReqParams() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "id", includeIfNull: false)  String? id)  $default,) {final _that = this;
switch (_that) {
case _ProductsidReqParams():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "id", includeIfNull: false)  String? id)?  $default,) {final _that = this;
switch (_that) {
case _ProductsidReqParams() when $default != null:
return $default(_that.id);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProductsidReqParams implements ProductsidReqParams {
  const _ProductsidReqParams({@JsonKey(name: "id", includeIfNull: false) this.id});
  factory _ProductsidReqParams.fromJson(Map<String, dynamic> json) => _$ProductsidReqParamsFromJson(json);

@override@JsonKey(name: "id", includeIfNull: false) final  String? id;

/// Create a copy of ProductsidReqParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductsidReqParamsCopyWith<_ProductsidReqParams> get copyWith => __$ProductsidReqParamsCopyWithImpl<_ProductsidReqParams>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductsidReqParamsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductsidReqParams&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'ProductsidReqParams(id: $id)';
}


}

/// @nodoc
abstract mixin class _$ProductsidReqParamsCopyWith<$Res> implements $ProductsidReqParamsCopyWith<$Res> {
  factory _$ProductsidReqParamsCopyWith(_ProductsidReqParams value, $Res Function(_ProductsidReqParams) _then) = __$ProductsidReqParamsCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "id", includeIfNull: false) String? id
});




}
/// @nodoc
class __$ProductsidReqParamsCopyWithImpl<$Res>
    implements _$ProductsidReqParamsCopyWith<$Res> {
  __$ProductsidReqParamsCopyWithImpl(this._self, this._then);

  final _ProductsidReqParams _self;
  final $Res Function(_ProductsidReqParams) _then;

/// Create a copy of ProductsidReqParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,}) {
  return _then(_ProductsidReqParams(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
