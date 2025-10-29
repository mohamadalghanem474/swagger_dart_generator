// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_post_req.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LoginPostReq {

@JsonKey(name: "body", includeIfNull: false) LoginPostReqBody? get body;
/// Create a copy of LoginPostReq
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginPostReqCopyWith<LoginPostReq> get copyWith => _$LoginPostReqCopyWithImpl<LoginPostReq>(this as LoginPostReq, _$identity);

  /// Serializes this LoginPostReq to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginPostReq&&(identical(other.body, body) || other.body == body));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,body);

@override
String toString() {
  return 'LoginPostReq(body: $body)';
}


}

/// @nodoc
abstract mixin class $LoginPostReqCopyWith<$Res>  {
  factory $LoginPostReqCopyWith(LoginPostReq value, $Res Function(LoginPostReq) _then) = _$LoginPostReqCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "body", includeIfNull: false) LoginPostReqBody? body
});


$LoginPostReqBodyCopyWith<$Res>? get body;

}
/// @nodoc
class _$LoginPostReqCopyWithImpl<$Res>
    implements $LoginPostReqCopyWith<$Res> {
  _$LoginPostReqCopyWithImpl(this._self, this._then);

  final LoginPostReq _self;
  final $Res Function(LoginPostReq) _then;

/// Create a copy of LoginPostReq
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? body = freezed,}) {
  return _then(_self.copyWith(
body: freezed == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as LoginPostReqBody?,
  ));
}
/// Create a copy of LoginPostReq
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LoginPostReqBodyCopyWith<$Res>? get body {
    if (_self.body == null) {
    return null;
  }

  return $LoginPostReqBodyCopyWith<$Res>(_self.body!, (value) {
    return _then(_self.copyWith(body: value));
  });
}
}


/// Adds pattern-matching-related methods to [LoginPostReq].
extension LoginPostReqPatterns on LoginPostReq {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LoginPostReq value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoginPostReq() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LoginPostReq value)  $default,){
final _that = this;
switch (_that) {
case _LoginPostReq():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LoginPostReq value)?  $default,){
final _that = this;
switch (_that) {
case _LoginPostReq() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "body", includeIfNull: false)  LoginPostReqBody? body)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoginPostReq() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "body", includeIfNull: false)  LoginPostReqBody? body)  $default,) {final _that = this;
switch (_that) {
case _LoginPostReq():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "body", includeIfNull: false)  LoginPostReqBody? body)?  $default,) {final _that = this;
switch (_that) {
case _LoginPostReq() when $default != null:
return $default(_that.body);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LoginPostReq implements LoginPostReq {
  const _LoginPostReq({@JsonKey(name: "body", includeIfNull: false) this.body});
  factory _LoginPostReq.fromJson(Map<String, dynamic> json) => _$LoginPostReqFromJson(json);

@override@JsonKey(name: "body", includeIfNull: false) final  LoginPostReqBody? body;

/// Create a copy of LoginPostReq
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoginPostReqCopyWith<_LoginPostReq> get copyWith => __$LoginPostReqCopyWithImpl<_LoginPostReq>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LoginPostReqToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoginPostReq&&(identical(other.body, body) || other.body == body));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,body);

@override
String toString() {
  return 'LoginPostReq(body: $body)';
}


}

/// @nodoc
abstract mixin class _$LoginPostReqCopyWith<$Res> implements $LoginPostReqCopyWith<$Res> {
  factory _$LoginPostReqCopyWith(_LoginPostReq value, $Res Function(_LoginPostReq) _then) = __$LoginPostReqCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "body", includeIfNull: false) LoginPostReqBody? body
});


@override $LoginPostReqBodyCopyWith<$Res>? get body;

}
/// @nodoc
class __$LoginPostReqCopyWithImpl<$Res>
    implements _$LoginPostReqCopyWith<$Res> {
  __$LoginPostReqCopyWithImpl(this._self, this._then);

  final _LoginPostReq _self;
  final $Res Function(_LoginPostReq) _then;

/// Create a copy of LoginPostReq
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? body = freezed,}) {
  return _then(_LoginPostReq(
body: freezed == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as LoginPostReqBody?,
  ));
}

/// Create a copy of LoginPostReq
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LoginPostReqBodyCopyWith<$Res>? get body {
    if (_self.body == null) {
    return null;
  }

  return $LoginPostReqBodyCopyWith<$Res>(_self.body!, (value) {
    return _then(_self.copyWith(body: value));
  });
}
}


/// @nodoc
mixin _$LoginPostReqBody {

@JsonKey(name: "email", includeIfNull: false) String? get email;@JsonKey(name: "password", includeIfNull: false) String? get password;
/// Create a copy of LoginPostReqBody
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginPostReqBodyCopyWith<LoginPostReqBody> get copyWith => _$LoginPostReqBodyCopyWithImpl<LoginPostReqBody>(this as LoginPostReqBody, _$identity);

  /// Serializes this LoginPostReqBody to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginPostReqBody&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,email,password);

@override
String toString() {
  return 'LoginPostReqBody(email: $email, password: $password)';
}


}

/// @nodoc
abstract mixin class $LoginPostReqBodyCopyWith<$Res>  {
  factory $LoginPostReqBodyCopyWith(LoginPostReqBody value, $Res Function(LoginPostReqBody) _then) = _$LoginPostReqBodyCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "email", includeIfNull: false) String? email,@JsonKey(name: "password", includeIfNull: false) String? password
});




}
/// @nodoc
class _$LoginPostReqBodyCopyWithImpl<$Res>
    implements $LoginPostReqBodyCopyWith<$Res> {
  _$LoginPostReqBodyCopyWithImpl(this._self, this._then);

  final LoginPostReqBody _self;
  final $Res Function(LoginPostReqBody) _then;

/// Create a copy of LoginPostReqBody
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? email = freezed,Object? password = freezed,}) {
  return _then(_self.copyWith(
email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,password: freezed == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [LoginPostReqBody].
extension LoginPostReqBodyPatterns on LoginPostReqBody {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LoginPostReqBody value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoginPostReqBody() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LoginPostReqBody value)  $default,){
final _that = this;
switch (_that) {
case _LoginPostReqBody():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LoginPostReqBody value)?  $default,){
final _that = this;
switch (_that) {
case _LoginPostReqBody() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "email", includeIfNull: false)  String? email, @JsonKey(name: "password", includeIfNull: false)  String? password)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoginPostReqBody() when $default != null:
return $default(_that.email,_that.password);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "email", includeIfNull: false)  String? email, @JsonKey(name: "password", includeIfNull: false)  String? password)  $default,) {final _that = this;
switch (_that) {
case _LoginPostReqBody():
return $default(_that.email,_that.password);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "email", includeIfNull: false)  String? email, @JsonKey(name: "password", includeIfNull: false)  String? password)?  $default,) {final _that = this;
switch (_that) {
case _LoginPostReqBody() when $default != null:
return $default(_that.email,_that.password);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LoginPostReqBody implements LoginPostReqBody {
  const _LoginPostReqBody({@JsonKey(name: "email", includeIfNull: false) this.email, @JsonKey(name: "password", includeIfNull: false) this.password});
  factory _LoginPostReqBody.fromJson(Map<String, dynamic> json) => _$LoginPostReqBodyFromJson(json);

@override@JsonKey(name: "email", includeIfNull: false) final  String? email;
@override@JsonKey(name: "password", includeIfNull: false) final  String? password;

/// Create a copy of LoginPostReqBody
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoginPostReqBodyCopyWith<_LoginPostReqBody> get copyWith => __$LoginPostReqBodyCopyWithImpl<_LoginPostReqBody>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LoginPostReqBodyToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoginPostReqBody&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,email,password);

@override
String toString() {
  return 'LoginPostReqBody(email: $email, password: $password)';
}


}

/// @nodoc
abstract mixin class _$LoginPostReqBodyCopyWith<$Res> implements $LoginPostReqBodyCopyWith<$Res> {
  factory _$LoginPostReqBodyCopyWith(_LoginPostReqBody value, $Res Function(_LoginPostReqBody) _then) = __$LoginPostReqBodyCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "email", includeIfNull: false) String? email,@JsonKey(name: "password", includeIfNull: false) String? password
});




}
/// @nodoc
class __$LoginPostReqBodyCopyWithImpl<$Res>
    implements _$LoginPostReqBodyCopyWith<$Res> {
  __$LoginPostReqBodyCopyWithImpl(this._self, this._then);

  final _LoginPostReqBody _self;
  final $Res Function(_LoginPostReqBody) _then;

/// Create a copy of LoginPostReqBody
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? email = freezed,Object? password = freezed,}) {
  return _then(_LoginPostReqBody(
email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,password: freezed == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
