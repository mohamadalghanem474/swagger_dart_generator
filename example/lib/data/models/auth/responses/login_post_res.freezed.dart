// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_post_res.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LoginPostRes {

@JsonKey(name: "accessToken", includeIfNull: false) String? get accessToken;@JsonKey(name: "refreshToken", includeIfNull: false) String? get refreshToken;@JsonKey(name: "expiresIn", includeIfNull: false) int? get expiresIn;
/// Create a copy of LoginPostRes
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginPostResCopyWith<LoginPostRes> get copyWith => _$LoginPostResCopyWithImpl<LoginPostRes>(this as LoginPostRes, _$identity);

  /// Serializes this LoginPostRes to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginPostRes&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken)&&(identical(other.refreshToken, refreshToken) || other.refreshToken == refreshToken)&&(identical(other.expiresIn, expiresIn) || other.expiresIn == expiresIn));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,accessToken,refreshToken,expiresIn);

@override
String toString() {
  return 'LoginPostRes(accessToken: $accessToken, refreshToken: $refreshToken, expiresIn: $expiresIn)';
}


}

/// @nodoc
abstract mixin class $LoginPostResCopyWith<$Res>  {
  factory $LoginPostResCopyWith(LoginPostRes value, $Res Function(LoginPostRes) _then) = _$LoginPostResCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "accessToken", includeIfNull: false) String? accessToken,@JsonKey(name: "refreshToken", includeIfNull: false) String? refreshToken,@JsonKey(name: "expiresIn", includeIfNull: false) int? expiresIn
});




}
/// @nodoc
class _$LoginPostResCopyWithImpl<$Res>
    implements $LoginPostResCopyWith<$Res> {
  _$LoginPostResCopyWithImpl(this._self, this._then);

  final LoginPostRes _self;
  final $Res Function(LoginPostRes) _then;

/// Create a copy of LoginPostRes
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? accessToken = freezed,Object? refreshToken = freezed,Object? expiresIn = freezed,}) {
  return _then(_self.copyWith(
accessToken: freezed == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String?,refreshToken: freezed == refreshToken ? _self.refreshToken : refreshToken // ignore: cast_nullable_to_non_nullable
as String?,expiresIn: freezed == expiresIn ? _self.expiresIn : expiresIn // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [LoginPostRes].
extension LoginPostResPatterns on LoginPostRes {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LoginPostRes value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoginPostRes() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LoginPostRes value)  $default,){
final _that = this;
switch (_that) {
case _LoginPostRes():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LoginPostRes value)?  $default,){
final _that = this;
switch (_that) {
case _LoginPostRes() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "accessToken", includeIfNull: false)  String? accessToken, @JsonKey(name: "refreshToken", includeIfNull: false)  String? refreshToken, @JsonKey(name: "expiresIn", includeIfNull: false)  int? expiresIn)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoginPostRes() when $default != null:
return $default(_that.accessToken,_that.refreshToken,_that.expiresIn);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "accessToken", includeIfNull: false)  String? accessToken, @JsonKey(name: "refreshToken", includeIfNull: false)  String? refreshToken, @JsonKey(name: "expiresIn", includeIfNull: false)  int? expiresIn)  $default,) {final _that = this;
switch (_that) {
case _LoginPostRes():
return $default(_that.accessToken,_that.refreshToken,_that.expiresIn);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "accessToken", includeIfNull: false)  String? accessToken, @JsonKey(name: "refreshToken", includeIfNull: false)  String? refreshToken, @JsonKey(name: "expiresIn", includeIfNull: false)  int? expiresIn)?  $default,) {final _that = this;
switch (_that) {
case _LoginPostRes() when $default != null:
return $default(_that.accessToken,_that.refreshToken,_that.expiresIn);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LoginPostRes implements LoginPostRes {
  const _LoginPostRes({@JsonKey(name: "accessToken", includeIfNull: false) this.accessToken, @JsonKey(name: "refreshToken", includeIfNull: false) this.refreshToken, @JsonKey(name: "expiresIn", includeIfNull: false) this.expiresIn});
  factory _LoginPostRes.fromJson(Map<String, dynamic> json) => _$LoginPostResFromJson(json);

@override@JsonKey(name: "accessToken", includeIfNull: false) final  String? accessToken;
@override@JsonKey(name: "refreshToken", includeIfNull: false) final  String? refreshToken;
@override@JsonKey(name: "expiresIn", includeIfNull: false) final  int? expiresIn;

/// Create a copy of LoginPostRes
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoginPostResCopyWith<_LoginPostRes> get copyWith => __$LoginPostResCopyWithImpl<_LoginPostRes>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LoginPostResToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoginPostRes&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken)&&(identical(other.refreshToken, refreshToken) || other.refreshToken == refreshToken)&&(identical(other.expiresIn, expiresIn) || other.expiresIn == expiresIn));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,accessToken,refreshToken,expiresIn);

@override
String toString() {
  return 'LoginPostRes(accessToken: $accessToken, refreshToken: $refreshToken, expiresIn: $expiresIn)';
}


}

/// @nodoc
abstract mixin class _$LoginPostResCopyWith<$Res> implements $LoginPostResCopyWith<$Res> {
  factory _$LoginPostResCopyWith(_LoginPostRes value, $Res Function(_LoginPostRes) _then) = __$LoginPostResCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "accessToken", includeIfNull: false) String? accessToken,@JsonKey(name: "refreshToken", includeIfNull: false) String? refreshToken,@JsonKey(name: "expiresIn", includeIfNull: false) int? expiresIn
});




}
/// @nodoc
class __$LoginPostResCopyWithImpl<$Res>
    implements _$LoginPostResCopyWith<$Res> {
  __$LoginPostResCopyWithImpl(this._self, this._then);

  final _LoginPostRes _self;
  final $Res Function(_LoginPostRes) _then;

/// Create a copy of LoginPostRes
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? accessToken = freezed,Object? refreshToken = freezed,Object? expiresIn = freezed,}) {
  return _then(_LoginPostRes(
accessToken: freezed == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String?,refreshToken: freezed == refreshToken ? _self.refreshToken : refreshToken // ignore: cast_nullable_to_non_nullable
as String?,expiresIn: freezed == expiresIn ? _self.expiresIn : expiresIn // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
