// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AuthRequest _$AuthRequestFromJson(Map<String, dynamic> json) {
  return _AuthRequest.fromJson(json);
}

/// @nodoc
class _$AuthRequestTearOff {
  const _$AuthRequestTearOff();

  _AuthRequest call(
      {@JsonKey(name: 'user_name') required String name,
      @JsonKey(name: 'password') required String password}) {
    return _AuthRequest(
      name: name,
      password: password,
    );
  }

  AuthRequest fromJson(Map<String, Object?> json) {
    return AuthRequest.fromJson(json);
  }
}

/// @nodoc
const $AuthRequest = _$AuthRequestTearOff();

/// @nodoc
mixin _$AuthRequest {
  @JsonKey(name: 'user_name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'password')
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthRequestCopyWith<AuthRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthRequestCopyWith<$Res> {
  factory $AuthRequestCopyWith(
          AuthRequest value, $Res Function(AuthRequest) then) =
      _$AuthRequestCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'user_name') String name,
      @JsonKey(name: 'password') String password});
}

/// @nodoc
class _$AuthRequestCopyWithImpl<$Res> implements $AuthRequestCopyWith<$Res> {
  _$AuthRequestCopyWithImpl(this._value, this._then);

  final AuthRequest _value;
  // ignore: unused_field
  final $Res Function(AuthRequest) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$AuthRequestCopyWith<$Res>
    implements $AuthRequestCopyWith<$Res> {
  factory _$AuthRequestCopyWith(
          _AuthRequest value, $Res Function(_AuthRequest) then) =
      __$AuthRequestCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'user_name') String name,
      @JsonKey(name: 'password') String password});
}

/// @nodoc
class __$AuthRequestCopyWithImpl<$Res> extends _$AuthRequestCopyWithImpl<$Res>
    implements _$AuthRequestCopyWith<$Res> {
  __$AuthRequestCopyWithImpl(
      _AuthRequest _value, $Res Function(_AuthRequest) _then)
      : super(_value, (v) => _then(v as _AuthRequest));

  @override
  _AuthRequest get _value => super._value as _AuthRequest;

  @override
  $Res call({
    Object? name = freezed,
    Object? password = freezed,
  }) {
    return _then(_AuthRequest(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AuthRequest with DiagnosticableTreeMixin implements _AuthRequest {
  const _$_AuthRequest(
      {@JsonKey(name: 'user_name') required this.name,
      @JsonKey(name: 'password') required this.password});

  factory _$_AuthRequest.fromJson(Map<String, dynamic> json) =>
      _$$_AuthRequestFromJson(json);

  @override
  @JsonKey(name: 'user_name')
  final String name;
  @override
  @JsonKey(name: 'password')
  final String password;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthRequest(name: $name, password: $password)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthRequest'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('password', password));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AuthRequest &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  _$AuthRequestCopyWith<_AuthRequest> get copyWith =>
      __$AuthRequestCopyWithImpl<_AuthRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuthRequestToJson(this);
  }
}

abstract class _AuthRequest implements AuthRequest {
  const factory _AuthRequest(
      {@JsonKey(name: 'user_name') required String name,
      @JsonKey(name: 'password') required String password}) = _$_AuthRequest;

  factory _AuthRequest.fromJson(Map<String, dynamic> json) =
      _$_AuthRequest.fromJson;

  @override
  @JsonKey(name: 'user_name')
  String get name;
  @override
  @JsonKey(name: 'password')
  String get password;
  @override
  @JsonKey(ignore: true)
  _$AuthRequestCopyWith<_AuthRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

AuthResponse _$AuthResponseFromJson(Map<String, dynamic> json) {
  return _AuthResponse.fromJson(json);
}

/// @nodoc
class _$AuthResponseTearOff {
  const _$AuthResponseTearOff();

  _AuthResponse call(
      {@JsonKey(name: 'access_token') required String accessToken,
      @JsonKey(name: 'refresh_token') required String refreshToken}) {
    return _AuthResponse(
      accessToken: accessToken,
      refreshToken: refreshToken,
    );
  }

  AuthResponse fromJson(Map<String, Object?> json) {
    return AuthResponse.fromJson(json);
  }
}

/// @nodoc
const $AuthResponse = _$AuthResponseTearOff();

/// @nodoc
mixin _$AuthResponse {
  @JsonKey(name: 'access_token')
  String get accessToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'refresh_token')
  String get refreshToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthResponseCopyWith<AuthResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthResponseCopyWith<$Res> {
  factory $AuthResponseCopyWith(
          AuthResponse value, $Res Function(AuthResponse) then) =
      _$AuthResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'access_token') String accessToken,
      @JsonKey(name: 'refresh_token') String refreshToken});
}

/// @nodoc
class _$AuthResponseCopyWithImpl<$Res> implements $AuthResponseCopyWith<$Res> {
  _$AuthResponseCopyWithImpl(this._value, this._then);

  final AuthResponse _value;
  // ignore: unused_field
  final $Res Function(AuthResponse) _then;

  @override
  $Res call({
    Object? accessToken = freezed,
    Object? refreshToken = freezed,
  }) {
    return _then(_value.copyWith(
      accessToken: accessToken == freezed
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: refreshToken == freezed
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$AuthResponseCopyWith<$Res>
    implements $AuthResponseCopyWith<$Res> {
  factory _$AuthResponseCopyWith(
          _AuthResponse value, $Res Function(_AuthResponse) then) =
      __$AuthResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'access_token') String accessToken,
      @JsonKey(name: 'refresh_token') String refreshToken});
}

/// @nodoc
class __$AuthResponseCopyWithImpl<$Res> extends _$AuthResponseCopyWithImpl<$Res>
    implements _$AuthResponseCopyWith<$Res> {
  __$AuthResponseCopyWithImpl(
      _AuthResponse _value, $Res Function(_AuthResponse) _then)
      : super(_value, (v) => _then(v as _AuthResponse));

  @override
  _AuthResponse get _value => super._value as _AuthResponse;

  @override
  $Res call({
    Object? accessToken = freezed,
    Object? refreshToken = freezed,
  }) {
    return _then(_AuthResponse(
      accessToken: accessToken == freezed
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: refreshToken == freezed
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AuthResponse with DiagnosticableTreeMixin implements _AuthResponse {
  const _$_AuthResponse(
      {@JsonKey(name: 'access_token') required this.accessToken,
      @JsonKey(name: 'refresh_token') required this.refreshToken});

  factory _$_AuthResponse.fromJson(Map<String, dynamic> json) =>
      _$$_AuthResponseFromJson(json);

  @override
  @JsonKey(name: 'access_token')
  final String accessToken;
  @override
  @JsonKey(name: 'refresh_token')
  final String refreshToken;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthResponse(accessToken: $accessToken, refreshToken: $refreshToken)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthResponse'))
      ..add(DiagnosticsProperty('accessToken', accessToken))
      ..add(DiagnosticsProperty('refreshToken', refreshToken));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AuthResponse &&
            const DeepCollectionEquality()
                .equals(other.accessToken, accessToken) &&
            const DeepCollectionEquality()
                .equals(other.refreshToken, refreshToken));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(accessToken),
      const DeepCollectionEquality().hash(refreshToken));

  @JsonKey(ignore: true)
  @override
  _$AuthResponseCopyWith<_AuthResponse> get copyWith =>
      __$AuthResponseCopyWithImpl<_AuthResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuthResponseToJson(this);
  }
}

abstract class _AuthResponse implements AuthResponse {
  const factory _AuthResponse(
          {@JsonKey(name: 'access_token') required String accessToken,
          @JsonKey(name: 'refresh_token') required String refreshToken}) =
      _$_AuthResponse;

  factory _AuthResponse.fromJson(Map<String, dynamic> json) =
      _$_AuthResponse.fromJson;

  @override
  @JsonKey(name: 'access_token')
  String get accessToken;
  @override
  @JsonKey(name: 'refresh_token')
  String get refreshToken;
  @override
  @JsonKey(ignore: true)
  _$AuthResponseCopyWith<_AuthResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

RefreshTokenRequest _$RefreshTokenRequestFromJson(Map<String, dynamic> json) {
  return _RefreshTokenRequest.fromJson(json);
}

/// @nodoc
class _$RefreshTokenRequestTearOff {
  const _$RefreshTokenRequestTearOff();

  _RefreshTokenRequest call(
      {@JsonKey(name: 'refresh_token') required String refreshToken}) {
    return _RefreshTokenRequest(
      refreshToken: refreshToken,
    );
  }

  RefreshTokenRequest fromJson(Map<String, Object?> json) {
    return RefreshTokenRequest.fromJson(json);
  }
}

/// @nodoc
const $RefreshTokenRequest = _$RefreshTokenRequestTearOff();

/// @nodoc
mixin _$RefreshTokenRequest {
  @JsonKey(name: 'refresh_token')
  String get refreshToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RefreshTokenRequestCopyWith<RefreshTokenRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RefreshTokenRequestCopyWith<$Res> {
  factory $RefreshTokenRequestCopyWith(
          RefreshTokenRequest value, $Res Function(RefreshTokenRequest) then) =
      _$RefreshTokenRequestCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'refresh_token') String refreshToken});
}

/// @nodoc
class _$RefreshTokenRequestCopyWithImpl<$Res>
    implements $RefreshTokenRequestCopyWith<$Res> {
  _$RefreshTokenRequestCopyWithImpl(this._value, this._then);

  final RefreshTokenRequest _value;
  // ignore: unused_field
  final $Res Function(RefreshTokenRequest) _then;

  @override
  $Res call({
    Object? refreshToken = freezed,
  }) {
    return _then(_value.copyWith(
      refreshToken: refreshToken == freezed
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$RefreshTokenRequestCopyWith<$Res>
    implements $RefreshTokenRequestCopyWith<$Res> {
  factory _$RefreshTokenRequestCopyWith(_RefreshTokenRequest value,
          $Res Function(_RefreshTokenRequest) then) =
      __$RefreshTokenRequestCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'refresh_token') String refreshToken});
}

/// @nodoc
class __$RefreshTokenRequestCopyWithImpl<$Res>
    extends _$RefreshTokenRequestCopyWithImpl<$Res>
    implements _$RefreshTokenRequestCopyWith<$Res> {
  __$RefreshTokenRequestCopyWithImpl(
      _RefreshTokenRequest _value, $Res Function(_RefreshTokenRequest) _then)
      : super(_value, (v) => _then(v as _RefreshTokenRequest));

  @override
  _RefreshTokenRequest get _value => super._value as _RefreshTokenRequest;

  @override
  $Res call({
    Object? refreshToken = freezed,
  }) {
    return _then(_RefreshTokenRequest(
      refreshToken: refreshToken == freezed
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RefreshTokenRequest
    with DiagnosticableTreeMixin
    implements _RefreshTokenRequest {
  const _$_RefreshTokenRequest(
      {@JsonKey(name: 'refresh_token') required this.refreshToken});

  factory _$_RefreshTokenRequest.fromJson(Map<String, dynamic> json) =>
      _$$_RefreshTokenRequestFromJson(json);

  @override
  @JsonKey(name: 'refresh_token')
  final String refreshToken;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RefreshTokenRequest(refreshToken: $refreshToken)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RefreshTokenRequest'))
      ..add(DiagnosticsProperty('refreshToken', refreshToken));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RefreshTokenRequest &&
            const DeepCollectionEquality()
                .equals(other.refreshToken, refreshToken));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(refreshToken));

  @JsonKey(ignore: true)
  @override
  _$RefreshTokenRequestCopyWith<_RefreshTokenRequest> get copyWith =>
      __$RefreshTokenRequestCopyWithImpl<_RefreshTokenRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RefreshTokenRequestToJson(this);
  }
}

abstract class _RefreshTokenRequest implements RefreshTokenRequest {
  const factory _RefreshTokenRequest(
          {@JsonKey(name: 'refresh_token') required String refreshToken}) =
      _$_RefreshTokenRequest;

  factory _RefreshTokenRequest.fromJson(Map<String, dynamic> json) =
      _$_RefreshTokenRequest.fromJson;

  @override
  @JsonKey(name: 'refresh_token')
  String get refreshToken;
  @override
  @JsonKey(ignore: true)
  _$RefreshTokenRequestCopyWith<_RefreshTokenRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
