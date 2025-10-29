// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'products_post_req.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProductsPostReq {

@JsonKey(name: "body", includeIfNull: false) ProductsPostReqBody? get body;
/// Create a copy of ProductsPostReq
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductsPostReqCopyWith<ProductsPostReq> get copyWith => _$ProductsPostReqCopyWithImpl<ProductsPostReq>(this as ProductsPostReq, _$identity);

  /// Serializes this ProductsPostReq to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductsPostReq&&(identical(other.body, body) || other.body == body));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,body);

@override
String toString() {
  return 'ProductsPostReq(body: $body)';
}


}

/// @nodoc
abstract mixin class $ProductsPostReqCopyWith<$Res>  {
  factory $ProductsPostReqCopyWith(ProductsPostReq value, $Res Function(ProductsPostReq) _then) = _$ProductsPostReqCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "body", includeIfNull: false) ProductsPostReqBody? body
});


$ProductsPostReqBodyCopyWith<$Res>? get body;

}
/// @nodoc
class _$ProductsPostReqCopyWithImpl<$Res>
    implements $ProductsPostReqCopyWith<$Res> {
  _$ProductsPostReqCopyWithImpl(this._self, this._then);

  final ProductsPostReq _self;
  final $Res Function(ProductsPostReq) _then;

/// Create a copy of ProductsPostReq
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? body = freezed,}) {
  return _then(_self.copyWith(
body: freezed == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as ProductsPostReqBody?,
  ));
}
/// Create a copy of ProductsPostReq
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductsPostReqBodyCopyWith<$Res>? get body {
    if (_self.body == null) {
    return null;
  }

  return $ProductsPostReqBodyCopyWith<$Res>(_self.body!, (value) {
    return _then(_self.copyWith(body: value));
  });
}
}


/// Adds pattern-matching-related methods to [ProductsPostReq].
extension ProductsPostReqPatterns on ProductsPostReq {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductsPostReq value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductsPostReq() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductsPostReq value)  $default,){
final _that = this;
switch (_that) {
case _ProductsPostReq():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductsPostReq value)?  $default,){
final _that = this;
switch (_that) {
case _ProductsPostReq() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "body", includeIfNull: false)  ProductsPostReqBody? body)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductsPostReq() when $default != null:
return $default(_that.body);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "body", includeIfNull: false)  ProductsPostReqBody? body)  $default,) {final _that = this;
switch (_that) {
case _ProductsPostReq():
return $default(_that.body);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "body", includeIfNull: false)  ProductsPostReqBody? body)?  $default,) {final _that = this;
switch (_that) {
case _ProductsPostReq() when $default != null:
return $default(_that.body);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProductsPostReq implements ProductsPostReq {
  const _ProductsPostReq({@JsonKey(name: "body", includeIfNull: false) this.body});
  factory _ProductsPostReq.fromJson(Map<String, dynamic> json) => _$ProductsPostReqFromJson(json);

@override@JsonKey(name: "body", includeIfNull: false) final  ProductsPostReqBody? body;

/// Create a copy of ProductsPostReq
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductsPostReqCopyWith<_ProductsPostReq> get copyWith => __$ProductsPostReqCopyWithImpl<_ProductsPostReq>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductsPostReqToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductsPostReq&&(identical(other.body, body) || other.body == body));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,body);

@override
String toString() {
  return 'ProductsPostReq(body: $body)';
}


}

/// @nodoc
abstract mixin class _$ProductsPostReqCopyWith<$Res> implements $ProductsPostReqCopyWith<$Res> {
  factory _$ProductsPostReqCopyWith(_ProductsPostReq value, $Res Function(_ProductsPostReq) _then) = __$ProductsPostReqCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "body", includeIfNull: false) ProductsPostReqBody? body
});


@override $ProductsPostReqBodyCopyWith<$Res>? get body;

}
/// @nodoc
class __$ProductsPostReqCopyWithImpl<$Res>
    implements _$ProductsPostReqCopyWith<$Res> {
  __$ProductsPostReqCopyWithImpl(this._self, this._then);

  final _ProductsPostReq _self;
  final $Res Function(_ProductsPostReq) _then;

/// Create a copy of ProductsPostReq
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? body = freezed,}) {
  return _then(_ProductsPostReq(
body: freezed == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as ProductsPostReqBody?,
  ));
}

/// Create a copy of ProductsPostReq
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductsPostReqBodyCopyWith<$Res>? get body {
    if (_self.body == null) {
    return null;
  }

  return $ProductsPostReqBodyCopyWith<$Res>(_self.body!, (value) {
    return _then(_self.copyWith(body: value));
  });
}
}


/// @nodoc
mixin _$ProductsPostReqBody {

@JsonKey(name: "productId", includeIfNull: false) int? get productId;@JsonKey(name: "name", includeIfNull: false) String? get name;@JsonKey(name: "price", includeIfNull: false) int? get price;@JsonKey(name: "inStock", includeIfNull: false) bool? get inStock;@JsonKey(name: "tags", includeIfNull: false) List<String> get tags;
/// Create a copy of ProductsPostReqBody
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductsPostReqBodyCopyWith<ProductsPostReqBody> get copyWith => _$ProductsPostReqBodyCopyWithImpl<ProductsPostReqBody>(this as ProductsPostReqBody, _$identity);

  /// Serializes this ProductsPostReqBody to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductsPostReqBody&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.name, name) || other.name == name)&&(identical(other.price, price) || other.price == price)&&(identical(other.inStock, inStock) || other.inStock == inStock)&&const DeepCollectionEquality().equals(other.tags, tags));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,productId,name,price,inStock,const DeepCollectionEquality().hash(tags));

@override
String toString() {
  return 'ProductsPostReqBody(productId: $productId, name: $name, price: $price, inStock: $inStock, tags: $tags)';
}


}

/// @nodoc
abstract mixin class $ProductsPostReqBodyCopyWith<$Res>  {
  factory $ProductsPostReqBodyCopyWith(ProductsPostReqBody value, $Res Function(ProductsPostReqBody) _then) = _$ProductsPostReqBodyCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "productId", includeIfNull: false) int? productId,@JsonKey(name: "name", includeIfNull: false) String? name,@JsonKey(name: "price", includeIfNull: false) int? price,@JsonKey(name: "inStock", includeIfNull: false) bool? inStock,@JsonKey(name: "tags", includeIfNull: false) List<String> tags
});




}
/// @nodoc
class _$ProductsPostReqBodyCopyWithImpl<$Res>
    implements $ProductsPostReqBodyCopyWith<$Res> {
  _$ProductsPostReqBodyCopyWithImpl(this._self, this._then);

  final ProductsPostReqBody _self;
  final $Res Function(ProductsPostReqBody) _then;

/// Create a copy of ProductsPostReqBody
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? productId = freezed,Object? name = freezed,Object? price = freezed,Object? inStock = freezed,Object? tags = null,}) {
  return _then(_self.copyWith(
productId: freezed == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int?,inStock: freezed == inStock ? _self.inStock : inStock // ignore: cast_nullable_to_non_nullable
as bool?,tags: null == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [ProductsPostReqBody].
extension ProductsPostReqBodyPatterns on ProductsPostReqBody {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductsPostReqBody value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductsPostReqBody() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductsPostReqBody value)  $default,){
final _that = this;
switch (_that) {
case _ProductsPostReqBody():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductsPostReqBody value)?  $default,){
final _that = this;
switch (_that) {
case _ProductsPostReqBody() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "productId", includeIfNull: false)  int? productId, @JsonKey(name: "name", includeIfNull: false)  String? name, @JsonKey(name: "price", includeIfNull: false)  int? price, @JsonKey(name: "inStock", includeIfNull: false)  bool? inStock, @JsonKey(name: "tags", includeIfNull: false)  List<String> tags)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductsPostReqBody() when $default != null:
return $default(_that.productId,_that.name,_that.price,_that.inStock,_that.tags);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "productId", includeIfNull: false)  int? productId, @JsonKey(name: "name", includeIfNull: false)  String? name, @JsonKey(name: "price", includeIfNull: false)  int? price, @JsonKey(name: "inStock", includeIfNull: false)  bool? inStock, @JsonKey(name: "tags", includeIfNull: false)  List<String> tags)  $default,) {final _that = this;
switch (_that) {
case _ProductsPostReqBody():
return $default(_that.productId,_that.name,_that.price,_that.inStock,_that.tags);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "productId", includeIfNull: false)  int? productId, @JsonKey(name: "name", includeIfNull: false)  String? name, @JsonKey(name: "price", includeIfNull: false)  int? price, @JsonKey(name: "inStock", includeIfNull: false)  bool? inStock, @JsonKey(name: "tags", includeIfNull: false)  List<String> tags)?  $default,) {final _that = this;
switch (_that) {
case _ProductsPostReqBody() when $default != null:
return $default(_that.productId,_that.name,_that.price,_that.inStock,_that.tags);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProductsPostReqBody implements ProductsPostReqBody {
  const _ProductsPostReqBody({@JsonKey(name: "productId", includeIfNull: false) this.productId, @JsonKey(name: "name", includeIfNull: false) this.name, @JsonKey(name: "price", includeIfNull: false) this.price, @JsonKey(name: "inStock", includeIfNull: false) this.inStock, @JsonKey(name: "tags", includeIfNull: false) final  List<String> tags = const []}): _tags = tags;
  factory _ProductsPostReqBody.fromJson(Map<String, dynamic> json) => _$ProductsPostReqBodyFromJson(json);

@override@JsonKey(name: "productId", includeIfNull: false) final  int? productId;
@override@JsonKey(name: "name", includeIfNull: false) final  String? name;
@override@JsonKey(name: "price", includeIfNull: false) final  int? price;
@override@JsonKey(name: "inStock", includeIfNull: false) final  bool? inStock;
 final  List<String> _tags;
@override@JsonKey(name: "tags", includeIfNull: false) List<String> get tags {
  if (_tags is EqualUnmodifiableListView) return _tags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tags);
}


/// Create a copy of ProductsPostReqBody
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductsPostReqBodyCopyWith<_ProductsPostReqBody> get copyWith => __$ProductsPostReqBodyCopyWithImpl<_ProductsPostReqBody>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductsPostReqBodyToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductsPostReqBody&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.name, name) || other.name == name)&&(identical(other.price, price) || other.price == price)&&(identical(other.inStock, inStock) || other.inStock == inStock)&&const DeepCollectionEquality().equals(other._tags, _tags));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,productId,name,price,inStock,const DeepCollectionEquality().hash(_tags));

@override
String toString() {
  return 'ProductsPostReqBody(productId: $productId, name: $name, price: $price, inStock: $inStock, tags: $tags)';
}


}

/// @nodoc
abstract mixin class _$ProductsPostReqBodyCopyWith<$Res> implements $ProductsPostReqBodyCopyWith<$Res> {
  factory _$ProductsPostReqBodyCopyWith(_ProductsPostReqBody value, $Res Function(_ProductsPostReqBody) _then) = __$ProductsPostReqBodyCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "productId", includeIfNull: false) int? productId,@JsonKey(name: "name", includeIfNull: false) String? name,@JsonKey(name: "price", includeIfNull: false) int? price,@JsonKey(name: "inStock", includeIfNull: false) bool? inStock,@JsonKey(name: "tags", includeIfNull: false) List<String> tags
});




}
/// @nodoc
class __$ProductsPostReqBodyCopyWithImpl<$Res>
    implements _$ProductsPostReqBodyCopyWith<$Res> {
  __$ProductsPostReqBodyCopyWithImpl(this._self, this._then);

  final _ProductsPostReqBody _self;
  final $Res Function(_ProductsPostReqBody) _then;

/// Create a copy of ProductsPostReqBody
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? productId = freezed,Object? name = freezed,Object? price = freezed,Object? inStock = freezed,Object? tags = null,}) {
  return _then(_ProductsPostReqBody(
productId: freezed == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int?,inStock: freezed == inStock ? _self.inStock : inStock // ignore: cast_nullable_to_non_nullable
as bool?,tags: null == tags ? _self._tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
