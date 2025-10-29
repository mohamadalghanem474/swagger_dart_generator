// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'products_get_res.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProductsGetRes {

 List<ProductsGetResItem> get items;
/// Create a copy of ProductsGetRes
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductsGetResCopyWith<ProductsGetRes> get copyWith => _$ProductsGetResCopyWithImpl<ProductsGetRes>(this as ProductsGetRes, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductsGetRes&&const DeepCollectionEquality().equals(other.items, items));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(items));

@override
String toString() {
  return 'ProductsGetRes(items: $items)';
}


}

/// @nodoc
abstract mixin class $ProductsGetResCopyWith<$Res>  {
  factory $ProductsGetResCopyWith(ProductsGetRes value, $Res Function(ProductsGetRes) _then) = _$ProductsGetResCopyWithImpl;
@useResult
$Res call({
 List<ProductsGetResItem> items
});




}
/// @nodoc
class _$ProductsGetResCopyWithImpl<$Res>
    implements $ProductsGetResCopyWith<$Res> {
  _$ProductsGetResCopyWithImpl(this._self, this._then);

  final ProductsGetRes _self;
  final $Res Function(ProductsGetRes) _then;

/// Create a copy of ProductsGetRes
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? items = null,}) {
  return _then(_self.copyWith(
items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<ProductsGetResItem>,
  ));
}

}


/// Adds pattern-matching-related methods to [ProductsGetRes].
extension ProductsGetResPatterns on ProductsGetRes {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductsGetRes value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductsGetRes() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductsGetRes value)  $default,){
final _that = this;
switch (_that) {
case _ProductsGetRes():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductsGetRes value)?  $default,){
final _that = this;
switch (_that) {
case _ProductsGetRes() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<ProductsGetResItem> items)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductsGetRes() when $default != null:
return $default(_that.items);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<ProductsGetResItem> items)  $default,) {final _that = this;
switch (_that) {
case _ProductsGetRes():
return $default(_that.items);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<ProductsGetResItem> items)?  $default,) {final _that = this;
switch (_that) {
case _ProductsGetRes() when $default != null:
return $default(_that.items);case _:
  return null;

}
}

}

/// @nodoc


class _ProductsGetRes implements ProductsGetRes {
  const _ProductsGetRes({final  List<ProductsGetResItem> items = const []}): _items = items;
  

 final  List<ProductsGetResItem> _items;
@override@JsonKey() List<ProductsGetResItem> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}


/// Create a copy of ProductsGetRes
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductsGetResCopyWith<_ProductsGetRes> get copyWith => __$ProductsGetResCopyWithImpl<_ProductsGetRes>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductsGetRes&&const DeepCollectionEquality().equals(other._items, _items));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_items));

@override
String toString() {
  return 'ProductsGetRes(items: $items)';
}


}

/// @nodoc
abstract mixin class _$ProductsGetResCopyWith<$Res> implements $ProductsGetResCopyWith<$Res> {
  factory _$ProductsGetResCopyWith(_ProductsGetRes value, $Res Function(_ProductsGetRes) _then) = __$ProductsGetResCopyWithImpl;
@override @useResult
$Res call({
 List<ProductsGetResItem> items
});




}
/// @nodoc
class __$ProductsGetResCopyWithImpl<$Res>
    implements _$ProductsGetResCopyWith<$Res> {
  __$ProductsGetResCopyWithImpl(this._self, this._then);

  final _ProductsGetRes _self;
  final $Res Function(_ProductsGetRes) _then;

/// Create a copy of ProductsGetRes
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? items = null,}) {
  return _then(_ProductsGetRes(
items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<ProductsGetResItem>,
  ));
}


}


/// @nodoc
mixin _$ProductsGetResItem {

@JsonKey(name: "productId", includeIfNull: false) int? get productId;@JsonKey(name: "name", includeIfNull: false) String? get name;@JsonKey(name: "price", includeIfNull: false) int? get price;@JsonKey(name: "inStock", includeIfNull: false) bool? get inStock;@JsonKey(name: "tags", includeIfNull: false) List<String> get tags;
/// Create a copy of ProductsGetResItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductsGetResItemCopyWith<ProductsGetResItem> get copyWith => _$ProductsGetResItemCopyWithImpl<ProductsGetResItem>(this as ProductsGetResItem, _$identity);

  /// Serializes this ProductsGetResItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductsGetResItem&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.name, name) || other.name == name)&&(identical(other.price, price) || other.price == price)&&(identical(other.inStock, inStock) || other.inStock == inStock)&&const DeepCollectionEquality().equals(other.tags, tags));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,productId,name,price,inStock,const DeepCollectionEquality().hash(tags));

@override
String toString() {
  return 'ProductsGetResItem(productId: $productId, name: $name, price: $price, inStock: $inStock, tags: $tags)';
}


}

/// @nodoc
abstract mixin class $ProductsGetResItemCopyWith<$Res>  {
  factory $ProductsGetResItemCopyWith(ProductsGetResItem value, $Res Function(ProductsGetResItem) _then) = _$ProductsGetResItemCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "productId", includeIfNull: false) int? productId,@JsonKey(name: "name", includeIfNull: false) String? name,@JsonKey(name: "price", includeIfNull: false) int? price,@JsonKey(name: "inStock", includeIfNull: false) bool? inStock,@JsonKey(name: "tags", includeIfNull: false) List<String> tags
});




}
/// @nodoc
class _$ProductsGetResItemCopyWithImpl<$Res>
    implements $ProductsGetResItemCopyWith<$Res> {
  _$ProductsGetResItemCopyWithImpl(this._self, this._then);

  final ProductsGetResItem _self;
  final $Res Function(ProductsGetResItem) _then;

/// Create a copy of ProductsGetResItem
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


/// Adds pattern-matching-related methods to [ProductsGetResItem].
extension ProductsGetResItemPatterns on ProductsGetResItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductsGetResItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductsGetResItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductsGetResItem value)  $default,){
final _that = this;
switch (_that) {
case _ProductsGetResItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductsGetResItem value)?  $default,){
final _that = this;
switch (_that) {
case _ProductsGetResItem() when $default != null:
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
case _ProductsGetResItem() when $default != null:
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
case _ProductsGetResItem():
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
case _ProductsGetResItem() when $default != null:
return $default(_that.productId,_that.name,_that.price,_that.inStock,_that.tags);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProductsGetResItem implements ProductsGetResItem {
  const _ProductsGetResItem({@JsonKey(name: "productId", includeIfNull: false) this.productId, @JsonKey(name: "name", includeIfNull: false) this.name, @JsonKey(name: "price", includeIfNull: false) this.price, @JsonKey(name: "inStock", includeIfNull: false) this.inStock, @JsonKey(name: "tags", includeIfNull: false) final  List<String> tags = const []}): _tags = tags;
  factory _ProductsGetResItem.fromJson(Map<String, dynamic> json) => _$ProductsGetResItemFromJson(json);

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


/// Create a copy of ProductsGetResItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductsGetResItemCopyWith<_ProductsGetResItem> get copyWith => __$ProductsGetResItemCopyWithImpl<_ProductsGetResItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductsGetResItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductsGetResItem&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.name, name) || other.name == name)&&(identical(other.price, price) || other.price == price)&&(identical(other.inStock, inStock) || other.inStock == inStock)&&const DeepCollectionEquality().equals(other._tags, _tags));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,productId,name,price,inStock,const DeepCollectionEquality().hash(_tags));

@override
String toString() {
  return 'ProductsGetResItem(productId: $productId, name: $name, price: $price, inStock: $inStock, tags: $tags)';
}


}

/// @nodoc
abstract mixin class _$ProductsGetResItemCopyWith<$Res> implements $ProductsGetResItemCopyWith<$Res> {
  factory _$ProductsGetResItemCopyWith(_ProductsGetResItem value, $Res Function(_ProductsGetResItem) _then) = __$ProductsGetResItemCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "productId", includeIfNull: false) int? productId,@JsonKey(name: "name", includeIfNull: false) String? name,@JsonKey(name: "price", includeIfNull: false) int? price,@JsonKey(name: "inStock", includeIfNull: false) bool? inStock,@JsonKey(name: "tags", includeIfNull: false) List<String> tags
});




}
/// @nodoc
class __$ProductsGetResItemCopyWithImpl<$Res>
    implements _$ProductsGetResItemCopyWith<$Res> {
  __$ProductsGetResItemCopyWithImpl(this._self, this._then);

  final _ProductsGetResItem _self;
  final $Res Function(_ProductsGetResItem) _then;

/// Create a copy of ProductsGetResItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? productId = freezed,Object? name = freezed,Object? price = freezed,Object? inStock = freezed,Object? tags = null,}) {
  return _then(_ProductsGetResItem(
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
