// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'products_get_req.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProductsGetReq {

@JsonKey(name: "query", includeIfNull: false) ProductsGetReqQuery? get query;
/// Create a copy of ProductsGetReq
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductsGetReqCopyWith<ProductsGetReq> get copyWith => _$ProductsGetReqCopyWithImpl<ProductsGetReq>(this as ProductsGetReq, _$identity);

  /// Serializes this ProductsGetReq to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductsGetReq&&(identical(other.query, query) || other.query == query));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,query);

@override
String toString() {
  return 'ProductsGetReq(query: $query)';
}


}

/// @nodoc
abstract mixin class $ProductsGetReqCopyWith<$Res>  {
  factory $ProductsGetReqCopyWith(ProductsGetReq value, $Res Function(ProductsGetReq) _then) = _$ProductsGetReqCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "query", includeIfNull: false) ProductsGetReqQuery? query
});


$ProductsGetReqQueryCopyWith<$Res>? get query;

}
/// @nodoc
class _$ProductsGetReqCopyWithImpl<$Res>
    implements $ProductsGetReqCopyWith<$Res> {
  _$ProductsGetReqCopyWithImpl(this._self, this._then);

  final ProductsGetReq _self;
  final $Res Function(ProductsGetReq) _then;

/// Create a copy of ProductsGetReq
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? query = freezed,}) {
  return _then(_self.copyWith(
query: freezed == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as ProductsGetReqQuery?,
  ));
}
/// Create a copy of ProductsGetReq
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductsGetReqQueryCopyWith<$Res>? get query {
    if (_self.query == null) {
    return null;
  }

  return $ProductsGetReqQueryCopyWith<$Res>(_self.query!, (value) {
    return _then(_self.copyWith(query: value));
  });
}
}


/// Adds pattern-matching-related methods to [ProductsGetReq].
extension ProductsGetReqPatterns on ProductsGetReq {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductsGetReq value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductsGetReq() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductsGetReq value)  $default,){
final _that = this;
switch (_that) {
case _ProductsGetReq():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductsGetReq value)?  $default,){
final _that = this;
switch (_that) {
case _ProductsGetReq() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "query", includeIfNull: false)  ProductsGetReqQuery? query)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductsGetReq() when $default != null:
return $default(_that.query);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "query", includeIfNull: false)  ProductsGetReqQuery? query)  $default,) {final _that = this;
switch (_that) {
case _ProductsGetReq():
return $default(_that.query);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "query", includeIfNull: false)  ProductsGetReqQuery? query)?  $default,) {final _that = this;
switch (_that) {
case _ProductsGetReq() when $default != null:
return $default(_that.query);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProductsGetReq implements ProductsGetReq {
  const _ProductsGetReq({@JsonKey(name: "query", includeIfNull: false) this.query});
  factory _ProductsGetReq.fromJson(Map<String, dynamic> json) => _$ProductsGetReqFromJson(json);

@override@JsonKey(name: "query", includeIfNull: false) final  ProductsGetReqQuery? query;

/// Create a copy of ProductsGetReq
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductsGetReqCopyWith<_ProductsGetReq> get copyWith => __$ProductsGetReqCopyWithImpl<_ProductsGetReq>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductsGetReqToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductsGetReq&&(identical(other.query, query) || other.query == query));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,query);

@override
String toString() {
  return 'ProductsGetReq(query: $query)';
}


}

/// @nodoc
abstract mixin class _$ProductsGetReqCopyWith<$Res> implements $ProductsGetReqCopyWith<$Res> {
  factory _$ProductsGetReqCopyWith(_ProductsGetReq value, $Res Function(_ProductsGetReq) _then) = __$ProductsGetReqCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "query", includeIfNull: false) ProductsGetReqQuery? query
});


@override $ProductsGetReqQueryCopyWith<$Res>? get query;

}
/// @nodoc
class __$ProductsGetReqCopyWithImpl<$Res>
    implements _$ProductsGetReqCopyWith<$Res> {
  __$ProductsGetReqCopyWithImpl(this._self, this._then);

  final _ProductsGetReq _self;
  final $Res Function(_ProductsGetReq) _then;

/// Create a copy of ProductsGetReq
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? query = freezed,}) {
  return _then(_ProductsGetReq(
query: freezed == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as ProductsGetReqQuery?,
  ));
}

/// Create a copy of ProductsGetReq
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductsGetReqQueryCopyWith<$Res>? get query {
    if (_self.query == null) {
    return null;
  }

  return $ProductsGetReqQueryCopyWith<$Res>(_self.query!, (value) {
    return _then(_self.copyWith(query: value));
  });
}
}


/// @nodoc
mixin _$ProductsGetReqQuery {

@JsonKey(name: "searchQuery", includeIfNull: false) String? get searchQuery;
/// Create a copy of ProductsGetReqQuery
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductsGetReqQueryCopyWith<ProductsGetReqQuery> get copyWith => _$ProductsGetReqQueryCopyWithImpl<ProductsGetReqQuery>(this as ProductsGetReqQuery, _$identity);

  /// Serializes this ProductsGetReqQuery to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductsGetReqQuery&&(identical(other.searchQuery, searchQuery) || other.searchQuery == searchQuery));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,searchQuery);

@override
String toString() {
  return 'ProductsGetReqQuery(searchQuery: $searchQuery)';
}


}

/// @nodoc
abstract mixin class $ProductsGetReqQueryCopyWith<$Res>  {
  factory $ProductsGetReqQueryCopyWith(ProductsGetReqQuery value, $Res Function(ProductsGetReqQuery) _then) = _$ProductsGetReqQueryCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "searchQuery", includeIfNull: false) String? searchQuery
});




}
/// @nodoc
class _$ProductsGetReqQueryCopyWithImpl<$Res>
    implements $ProductsGetReqQueryCopyWith<$Res> {
  _$ProductsGetReqQueryCopyWithImpl(this._self, this._then);

  final ProductsGetReqQuery _self;
  final $Res Function(ProductsGetReqQuery) _then;

/// Create a copy of ProductsGetReqQuery
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? searchQuery = freezed,}) {
  return _then(_self.copyWith(
searchQuery: freezed == searchQuery ? _self.searchQuery : searchQuery // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ProductsGetReqQuery].
extension ProductsGetReqQueryPatterns on ProductsGetReqQuery {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductsGetReqQuery value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductsGetReqQuery() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductsGetReqQuery value)  $default,){
final _that = this;
switch (_that) {
case _ProductsGetReqQuery():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductsGetReqQuery value)?  $default,){
final _that = this;
switch (_that) {
case _ProductsGetReqQuery() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "searchQuery", includeIfNull: false)  String? searchQuery)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductsGetReqQuery() when $default != null:
return $default(_that.searchQuery);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "searchQuery", includeIfNull: false)  String? searchQuery)  $default,) {final _that = this;
switch (_that) {
case _ProductsGetReqQuery():
return $default(_that.searchQuery);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "searchQuery", includeIfNull: false)  String? searchQuery)?  $default,) {final _that = this;
switch (_that) {
case _ProductsGetReqQuery() when $default != null:
return $default(_that.searchQuery);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProductsGetReqQuery implements ProductsGetReqQuery {
  const _ProductsGetReqQuery({@JsonKey(name: "searchQuery", includeIfNull: false) this.searchQuery});
  factory _ProductsGetReqQuery.fromJson(Map<String, dynamic> json) => _$ProductsGetReqQueryFromJson(json);

@override@JsonKey(name: "searchQuery", includeIfNull: false) final  String? searchQuery;

/// Create a copy of ProductsGetReqQuery
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductsGetReqQueryCopyWith<_ProductsGetReqQuery> get copyWith => __$ProductsGetReqQueryCopyWithImpl<_ProductsGetReqQuery>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductsGetReqQueryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductsGetReqQuery&&(identical(other.searchQuery, searchQuery) || other.searchQuery == searchQuery));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,searchQuery);

@override
String toString() {
  return 'ProductsGetReqQuery(searchQuery: $searchQuery)';
}


}

/// @nodoc
abstract mixin class _$ProductsGetReqQueryCopyWith<$Res> implements $ProductsGetReqQueryCopyWith<$Res> {
  factory _$ProductsGetReqQueryCopyWith(_ProductsGetReqQuery value, $Res Function(_ProductsGetReqQuery) _then) = __$ProductsGetReqQueryCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "searchQuery", includeIfNull: false) String? searchQuery
});




}
/// @nodoc
class __$ProductsGetReqQueryCopyWithImpl<$Res>
    implements _$ProductsGetReqQueryCopyWith<$Res> {
  __$ProductsGetReqQueryCopyWithImpl(this._self, this._then);

  final _ProductsGetReqQuery _self;
  final $Res Function(_ProductsGetReqQuery) _then;

/// Create a copy of ProductsGetReqQuery
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? searchQuery = freezed,}) {
  return _then(_ProductsGetReqQuery(
searchQuery: freezed == searchQuery ? _self.searchQuery : searchQuery // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
