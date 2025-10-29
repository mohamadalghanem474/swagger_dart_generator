// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_get_res.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserGetRes {

@JsonKey(name: "id", includeIfNull: false) String? get id;@JsonKey(name: "firstName", includeIfNull: false) String? get firstName;@JsonKey(name: "lastName", includeIfNull: false) String? get lastName;@JsonKey(name: "role", includeIfNull: false) String? get role;
/// Create a copy of UserGetRes
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserGetResCopyWith<UserGetRes> get copyWith => _$UserGetResCopyWithImpl<UserGetRes>(this as UserGetRes, _$identity);

  /// Serializes this UserGetRes to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserGetRes&&(identical(other.id, id) || other.id == id)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.role, role) || other.role == role));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,firstName,lastName,role);

@override
String toString() {
  return 'UserGetRes(id: $id, firstName: $firstName, lastName: $lastName, role: $role)';
}


}

/// @nodoc
abstract mixin class $UserGetResCopyWith<$Res>  {
  factory $UserGetResCopyWith(UserGetRes value, $Res Function(UserGetRes) _then) = _$UserGetResCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "id", includeIfNull: false) String? id,@JsonKey(name: "firstName", includeIfNull: false) String? firstName,@JsonKey(name: "lastName", includeIfNull: false) String? lastName,@JsonKey(name: "role", includeIfNull: false) String? role
});




}
/// @nodoc
class _$UserGetResCopyWithImpl<$Res>
    implements $UserGetResCopyWith<$Res> {
  _$UserGetResCopyWithImpl(this._self, this._then);

  final UserGetRes _self;
  final $Res Function(UserGetRes) _then;

/// Create a copy of UserGetRes
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? firstName = freezed,Object? lastName = freezed,Object? role = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,role: freezed == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [UserGetRes].
extension UserGetResPatterns on UserGetRes {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserGetRes value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserGetRes() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserGetRes value)  $default,){
final _that = this;
switch (_that) {
case _UserGetRes():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserGetRes value)?  $default,){
final _that = this;
switch (_that) {
case _UserGetRes() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "id", includeIfNull: false)  String? id, @JsonKey(name: "firstName", includeIfNull: false)  String? firstName, @JsonKey(name: "lastName", includeIfNull: false)  String? lastName, @JsonKey(name: "role", includeIfNull: false)  String? role)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserGetRes() when $default != null:
return $default(_that.id,_that.firstName,_that.lastName,_that.role);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "id", includeIfNull: false)  String? id, @JsonKey(name: "firstName", includeIfNull: false)  String? firstName, @JsonKey(name: "lastName", includeIfNull: false)  String? lastName, @JsonKey(name: "role", includeIfNull: false)  String? role)  $default,) {final _that = this;
switch (_that) {
case _UserGetRes():
return $default(_that.id,_that.firstName,_that.lastName,_that.role);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "id", includeIfNull: false)  String? id, @JsonKey(name: "firstName", includeIfNull: false)  String? firstName, @JsonKey(name: "lastName", includeIfNull: false)  String? lastName, @JsonKey(name: "role", includeIfNull: false)  String? role)?  $default,) {final _that = this;
switch (_that) {
case _UserGetRes() when $default != null:
return $default(_that.id,_that.firstName,_that.lastName,_that.role);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserGetRes implements UserGetRes {
  const _UserGetRes({@JsonKey(name: "id", includeIfNull: false) this.id, @JsonKey(name: "firstName", includeIfNull: false) this.firstName, @JsonKey(name: "lastName", includeIfNull: false) this.lastName, @JsonKey(name: "role", includeIfNull: false) this.role});
  factory _UserGetRes.fromJson(Map<String, dynamic> json) => _$UserGetResFromJson(json);

@override@JsonKey(name: "id", includeIfNull: false) final  String? id;
@override@JsonKey(name: "firstName", includeIfNull: false) final  String? firstName;
@override@JsonKey(name: "lastName", includeIfNull: false) final  String? lastName;
@override@JsonKey(name: "role", includeIfNull: false) final  String? role;

/// Create a copy of UserGetRes
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserGetResCopyWith<_UserGetRes> get copyWith => __$UserGetResCopyWithImpl<_UserGetRes>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserGetResToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserGetRes&&(identical(other.id, id) || other.id == id)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.role, role) || other.role == role));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,firstName,lastName,role);

@override
String toString() {
  return 'UserGetRes(id: $id, firstName: $firstName, lastName: $lastName, role: $role)';
}


}

/// @nodoc
abstract mixin class _$UserGetResCopyWith<$Res> implements $UserGetResCopyWith<$Res> {
  factory _$UserGetResCopyWith(_UserGetRes value, $Res Function(_UserGetRes) _then) = __$UserGetResCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "id", includeIfNull: false) String? id,@JsonKey(name: "firstName", includeIfNull: false) String? firstName,@JsonKey(name: "lastName", includeIfNull: false) String? lastName,@JsonKey(name: "role", includeIfNull: false) String? role
});




}
/// @nodoc
class __$UserGetResCopyWithImpl<$Res>
    implements _$UserGetResCopyWith<$Res> {
  __$UserGetResCopyWithImpl(this._self, this._then);

  final _UserGetRes _self;
  final $Res Function(_UserGetRes) _then;

/// Create a copy of UserGetRes
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? firstName = freezed,Object? lastName = freezed,Object? role = freezed,}) {
  return _then(_UserGetRes(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,role: freezed == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
